import 'package:fast_contacts/fast_contacts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_isar_pagination/model/contact.dart' as isar_model;
import 'contact_item.dart';

class ContactList extends StatefulWidget {
  final Isar isar;

  ContactList({super.key, required this.isar});

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  List<isar_model.Contact> _isarContacts = [];
  List<Contact> _contacts = [];
  final _ctrl = ScrollController();
  List<ContactField> _fields = ContactField.values.toList();
  bool _isLoading = false;
  String? _text;

  // Pagination variables
  int _pageIndex = 0; // Current page index
  final int _pageSize = 10; // Number of contacts to load per page

  @override
  void initState() {
    super.initState();
    loadInitialContacts();
    _ctrl.addListener(_onScroll); // Add scroll listener for pagination
  }

  @override
  void dispose() {
    _ctrl.dispose(); // Dispose the scroll controller when the widget is removed
    super.dispose();
  }

  Future<void> _fetchAndStoreContacts() async {
    try {
      final permissionStatus = await Permission.contacts.request();

      if (permissionStatus.isGranted) {
        _isarContacts.clear(); // Clear current contacts list
        _pageIndex = 0;
        await widget.isar.writeTxn(() async {
          // This will delete all contacts from the Isar database
          await widget.isar.contacts.clear(); // Clear the Contact collection
        });
        // Fetch contacts from the device using fast_contacts package
        final deviceContacts = await FastContacts.getAllContacts(fields: _fields);

        // Map device contacts to your Isar Contact model
        final isarContacts = deviceContacts.map((c) {
          // Create structured name
          final structuredName = isar_model.StructuredName()
            ..displayName = c.displayName ?? ''
            ..givenName = c.structuredName?.givenName ?? ''
            ..middleName = c.structuredName?.middleName ?? ''
            ..familyName = c.structuredName?.familyName ?? ''
            ..namePrefix = c.structuredName?.namePrefix ?? ''
            ..nameSuffix = c.structuredName?.nameSuffix ?? '';


          if(c.organization!=null){
            final organization = isar_model.Organization()
              ..company = c.organization!.company ?? ''
              ..department = c.organization!.department ?? ''
              ..jobDescription = c.organization!.jobDescription ?? '';
          }

          // Create organization (initialize with default values to avoid LateInitializationError)
          final organization = isar_model.Organization()
            ..company = ''
            ..department = ''
            ..jobDescription = '';



          // Create phones
          final phones = c.phones.map((p) {
            return isar_model.Phone()
              ..number = p.number ?? ''
              ..label = p.label ?? '';
          }).toList();

          // Create emails
          final emails = c.emails.map((e) {
            return isar_model.Email()
              ..address = e.address ?? ''
              ..label = e.label ?? '';
          }).toList();

          // Create the Isar Contact object
          final isarContact = isar_model.Contact()
            ..structuredName = structuredName
            ..phones = phones
            ..emails = emails
            ..organization = organization; // Set organization if available

          return isarContact;
        }).toList();

        // Store contacts in the Isar database
        await widget.isar.writeTxn(() async {
          await widget.isar.contacts.putAll(isarContacts);
        });

        // Fetch the initial set of stored contacts to display
        await _loadContactsFromIsar();
      } else {
        print('Permission denied to access contacts');
      }
    } catch (e) {
      print("Error fetching or storing contacts: $e");
    }
  }

  Future<void> _loadContactsFromIsar() async {
    try {
      _isLoading = true;
      if (mounted) setState(() {});

      // Fetch contacts from the Isar database using pagination
      final isarContacts = await widget.isar.contacts
          .where()
          .offset(_pageIndex * _pageSize) // Offset for pagination
          .limit(_pageSize) // Limit results to page size
          .findAll();

      _pageIndex++; // Increment the page index

      setState(() {
        _isarContacts.addAll(isarContacts); // Append new contacts to the list
      });
    } catch (e) {
      print('Error loading contacts from Isar: $e');
    } finally {
      _isLoading = false;
    }
  }

  void _onScroll() {
    if (_ctrl.position.pixels == _ctrl.position.maxScrollExtent) {
      // When scrolled to the end, load the next set of contacts
      _loadContactsFromIsar();
    }
  }

  void loadInitialContacts() async {
    // Fetch and store contacts from device, and then show them from the database
    await _fetchAndStoreContacts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('fast_contacts'),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              _isarContacts.clear(); // Clear current contacts list
              _pageIndex = 0; // Reset page index
              _loadContactsFromIsar(); // Reload contacts from Isar
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextButton(
            onPressed: _fetchAndStoreContacts, // Fetch contacts from the device
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 24,
                  width: 24,
                  child: _isLoading
                      ? CircularProgressIndicator()
                      : Icon(Icons.refresh),
                ),
                const SizedBox(width: 8),
                Text('Load contacts from Device'),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: Scrollbar(
              controller: _ctrl,
              interactive: true,
              thickness: 24,
              child: ListView.builder(
                controller: _ctrl,
                itemCount: _isarContacts.length + 1, // Add 1 for loading indicator
                itemBuilder: (_, index) {
                  if (index == _isarContacts.length) {
                    return _isLoading
                        ? Center(child: CircularProgressIndicator())
                        : Container(); // Show loading indicator if loading
                  }

                  final contact = _isarContacts[index];
                  return ContactItem(
                    contact: Contact(
                      id:"",
                      organization:null,
                      // structuredName: contact.structuredName,
                      phones: contact.phones
                          .map((p) => Phone(number: p.number, label: p.label))
                          .toList(),
                      emails: contact.emails
                          .map((e) => Email(address: e.address, label: e.label))
                          .toList(),
                      structuredName: StructuredName(
                        displayName: contact.structuredName.displayName,
                        givenName: contact.structuredName.givenName,
                        middleName: contact.structuredName.middleName,
                        familyName: contact.structuredName.familyName,
                        namePrefix: contact.structuredName.namePrefix,
                        nameSuffix: contact.structuredName.nameSuffix,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
