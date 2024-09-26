import 'package:isar/isar.dart';

part 'contact.g.dart';

@collection
class Contact {
  Id id = Isar.autoIncrement;

  final IsarLinks<Phone> phones = IsarLinks<Phone>();
  final IsarLinks<Email> emails = IsarLinks<Email>();
  final IsarLink<StructuredName> structuredName = IsarLink<StructuredName>();
  final IsarLink<Organization> organization = IsarLink<Organization>();
}

@collection
class Phone {
  Id id = Isar.autoIncrement;  // Required for each collection
  late String number;
  late String label;
}

@collection
class Email {
  Id id = Isar.autoIncrement;  // Required for each collection
  late String address;
  late String label;
}

@collection
class StructuredName {
  Id id = Isar.autoIncrement;  // Required for each collection
  late String displayName;
  late String namePrefix;
  late String givenName;
  late String middleName;
  late String familyName;
  late String nameSuffix;
}

@collection
class Organization {
  Id id = Isar.autoIncrement;  // Required for each collection
  late String company;
  late String department;
  late String jobDescription;
}
