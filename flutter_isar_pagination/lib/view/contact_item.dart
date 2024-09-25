import 'dart:convert';

import 'package:fast_contacts/fast_contacts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  const ContactItem({
    Key? key,
    required this.contact,
  }) : super(key: key);

  static final height = 86.0;

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    final phones = contact.phones.map((e) => e.number).join(', ');
    final emails = contact.emails.map((e) => e.address).join(', ');
    final name = contact.structuredName;
    final nameStr = name != null
        ? [
      if (name.namePrefix.isNotEmpty) name.namePrefix,
      if (name.givenName.isNotEmpty) name.givenName,
      if (name.middleName.isNotEmpty) name.middleName,
      if (name.familyName.isNotEmpty) name.familyName,
      if (name.nameSuffix.isNotEmpty) name.nameSuffix,
    ].join(', ')
        : '';
    final organization = contact.organization;
    final organizationStr = organization != null
        ? [
      if (organization.company.isNotEmpty) organization.company,
      if (organization.department.isNotEmpty) organization.department,
      if (organization.jobDescription.isNotEmpty)
        organization.jobDescription,
    ].join(', ')
        : '';

    return SizedBox(
      height: height,
      child: ListTile(
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => _ContactDetailsPage(
              contactId: contact.id,
            ),
          ),
        ),
         leading:const Icon(Icons.hail_outlined),
        title: Text(
          contact.displayName,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (phones.isNotEmpty)
              Text(
                phones,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            if (emails.isNotEmpty)
              Text(
                emails,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            if (nameStr.isNotEmpty)
              Text(
                nameStr,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            if (organizationStr.isNotEmpty)
              Text(
                organizationStr,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
          ],
        ),
      ),
    );
  }
}
class _ContactDetailsPage extends StatefulWidget {
  const _ContactDetailsPage({
    Key? key,
    required this.contactId,
  }) : super(key: key);

  final String contactId;

  @override
  State<_ContactDetailsPage> createState() => _ContactDetailsPageState();
}

class _ContactDetailsPageState extends State<_ContactDetailsPage> {
  late Future<Contact?> _contactFuture;

  Duration? _timeTaken;

  @override
  void initState() {
    super.initState();
    final sw = Stopwatch()..start();
    _contactFuture = FastContacts.getContact(widget.contactId).then((value) {
      _timeTaken = (sw..stop()).elapsed;
      return value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact details: ${widget.contactId}'),
      ),
      body: FutureBuilder<Contact?>(
        future: _contactFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          final error = snapshot.error;
          if (error != null) {
            return Center(child: Text('Error: $error'));
          }

          final contact = snapshot.data;
          if (contact == null) {
            return const Center(child: Text('Contact not found'));
          }

          final contactJson =
          JsonEncoder.withIndent('  ').convert(contact.toMap());

          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 // _ContactImage(contact: contact),
                  //const SizedBox(height: 16),
                  if (_timeTaken != null)
                    Text('Took: ${_timeTaken!.inMilliseconds}ms'),
                  const SizedBox(height: 16),
                  Text(contactJson),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}