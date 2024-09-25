import 'package:fast_contacts/fast_contacts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:permission_handler/permission_handler.dart';

import 'contact_item.dart';

class ContactList extends StatefulWidget {
      ContactList({super.key,});

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  List<Contact> _contacts = const [];
  final _ctrl = ScrollController();


  List<ContactField> _fields = ContactField.values.toList();
  bool _isLoading = false;
  String? _text;

  @override
  void initState() {
    super.initState();

    loadContacts();  // Load initial data
  }

  Future<void> loadContacts() async {
    try {
      _isLoading = true;
      if (mounted) setState(() {});
      final sw = Stopwatch()..start();
      _contacts = await FastContacts.getAllContacts(fields: _fields);
      sw.stop();
      _text =
      'Contacts: ${_contacts.length}\nTook: ${sw.elapsedMilliseconds}ms';
    } on PlatformException catch (e) {
      _text = 'Failed to get contacts:\n${e.details}';
      _isLoading = false;
    } finally {
      _isLoading = false;
    }
    if (!mounted) return;
    setState(() {});
  }


  // Get all contacts
  final contacts = FastContacts.getAllContacts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('fast_contacts'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextButton(
            onPressed: loadContacts,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 24,
                  width: 24,
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: _isLoading
                        ? CircularProgressIndicator()
                        : Icon(Icons.refresh),
                  ),
                ),
                const SizedBox(width: 8),
                Text('Load contacts'),
              ],
            ),
          ),
          ExpansionTile(
            title: Row(
              children: [
                Text('Fields:'),
                const SizedBox(width: 8),
                const Spacer(),
                TextButton(
                  child: Row(
                    children: [
                      if (_fields.length == ContactField.values.length) ...[
                        Icon(Icons.check),
                        const SizedBox(width: 8),
                      ],
                      Text('All'),
                    ],
                  ),
                  onPressed: () => setState(() {
                    _fields = ContactField.values.toList();
                  }),
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: Row(
                    children: [
                      if (_fields.length == 0) ...[
                        Icon(Icons.check),
                        const SizedBox(width: 8),
                      ],
                      Text('None'),
                    ],
                  ),
                  onPressed: () => setState(() {
                    _fields.clear();
                  }),
                ),
              ],
            ),
            children: [
              Wrap(
                spacing: 4,
                children: [
                  for (final field in ContactField.values)
                    ChoiceChip(
                      label: Text(field.name),
                      selected: _fields.contains(field),
                      onSelected: (selected) => setState(() {
                        if (selected) {
                          _fields.add(field);
                        } else {
                          _fields.remove(field);
                        }
                      }),
                    ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(_text ?? 'Tap to load contacts', textAlign: TextAlign.center),
          const SizedBox(height: 8),
          Expanded(
            child: Scrollbar(
              controller: _ctrl,
              interactive: true,
              thickness: 24,
              child: ListView.builder(
                controller: _ctrl,
                itemCount: _contacts.length,
                itemExtent: ContactItem.height,
                itemBuilder: (_, index) =>
                    ContactItem(contact: _contacts[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
