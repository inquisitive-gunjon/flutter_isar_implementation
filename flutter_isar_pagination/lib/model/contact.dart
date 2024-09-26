import 'package:isar/isar.dart';

part 'contact.g.dart';

@collection
class Contact {
  Id id = Isar.autoIncrement;

  late List<Phone> phones;
  late List<Email> emails;
  late StructuredName structuredName;
  late Organization? organization;
}

@embedded
class Phone {
  // Id id = Isar.autoIncrement;  // Required for each collection
  late String number;
  late String label;
}

@embedded
class Email {
  // Id id = Isar.autoIncrement;  // Required for each collection
  late String address;
  late String label;
}

@embedded
class StructuredName {
  late String displayName;
  late String namePrefix;
  late String givenName;
  late String middleName;
  late String familyName;
  late String nameSuffix;
}

@embedded
class Organization {
  late String company;
  late String department;
  late String jobDescription;
}
