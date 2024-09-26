// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetContactCollection on Isar {
  IsarCollection<Contact> get contacts => this.collection();
}

const ContactSchema = CollectionSchema(
  name: r'Contact',
  id: 342568039478732666,
  properties: {},
  estimateSize: _contactEstimateSize,
  serialize: _contactSerialize,
  deserialize: _contactDeserialize,
  deserializeProp: _contactDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'phones': LinkSchema(
      id: 4685183115926743112,
      name: r'phones',
      target: r'Phone',
      single: false,
    ),
    r'emails': LinkSchema(
      id: 7444451028884960817,
      name: r'emails',
      target: r'Email',
      single: false,
    ),
    r'structuredName': LinkSchema(
      id: -1686287148876577971,
      name: r'structuredName',
      target: r'StructuredName',
      single: true,
    ),
    r'organization': LinkSchema(
      id: -7841019446041930156,
      name: r'organization',
      target: r'Organization',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _contactGetId,
  getLinks: _contactGetLinks,
  attach: _contactAttach,
  version: '3.1.0',
);

int _contactEstimateSize(
  Contact object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _contactSerialize(
  Contact object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {}
Contact _contactDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Contact();
  object.id = id;
  return object;
}

P _contactDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _contactGetId(Contact object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _contactGetLinks(Contact object) {
  return [
    object.phones,
    object.emails,
    object.structuredName,
    object.organization
  ];
}

void _contactAttach(IsarCollection<dynamic> col, Id id, Contact object) {
  object.id = id;
  object.phones.attach(col, col.isar.collection<Phone>(), r'phones', id);
  object.emails.attach(col, col.isar.collection<Email>(), r'emails', id);
  object.structuredName.attach(
      col, col.isar.collection<StructuredName>(), r'structuredName', id);
  object.organization
      .attach(col, col.isar.collection<Organization>(), r'organization', id);
}

extension ContactQueryWhereSort on QueryBuilder<Contact, Contact, QWhere> {
  QueryBuilder<Contact, Contact, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ContactQueryWhere on QueryBuilder<Contact, Contact, QWhereClause> {
  QueryBuilder<Contact, Contact, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Contact, Contact, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Contact, Contact, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Contact, Contact, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Contact, Contact, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ContactQueryFilter
    on QueryBuilder<Contact, Contact, QFilterCondition> {
  QueryBuilder<Contact, Contact, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ContactQueryObject
    on QueryBuilder<Contact, Contact, QFilterCondition> {}

extension ContactQueryLinks
    on QueryBuilder<Contact, Contact, QFilterCondition> {
  QueryBuilder<Contact, Contact, QAfterFilterCondition> phones(
      FilterQuery<Phone> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'phones');
    });
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> phonesLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'phones', length, true, length, true);
    });
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> phonesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'phones', 0, true, 0, true);
    });
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> phonesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'phones', 0, false, 999999, true);
    });
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> phonesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'phones', 0, true, length, include);
    });
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> phonesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'phones', length, include, 999999, true);
    });
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> phonesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'phones', lower, includeLower, upper, includeUpper);
    });
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> emails(
      FilterQuery<Email> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'emails');
    });
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> emailsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'emails', length, true, length, true);
    });
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> emailsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'emails', 0, true, 0, true);
    });
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> emailsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'emails', 0, false, 999999, true);
    });
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> emailsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'emails', 0, true, length, include);
    });
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> emailsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'emails', length, include, 999999, true);
    });
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> emailsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'emails', lower, includeLower, upper, includeUpper);
    });
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> structuredName(
      FilterQuery<StructuredName> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'structuredName');
    });
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> structuredNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'structuredName', 0, true, 0, true);
    });
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> organization(
      FilterQuery<Organization> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'organization');
    });
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> organizationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'organization', 0, true, 0, true);
    });
  }
}

extension ContactQuerySortBy on QueryBuilder<Contact, Contact, QSortBy> {}

extension ContactQuerySortThenBy
    on QueryBuilder<Contact, Contact, QSortThenBy> {
  QueryBuilder<Contact, Contact, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Contact, Contact, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension ContactQueryWhereDistinct
    on QueryBuilder<Contact, Contact, QDistinct> {}

extension ContactQueryProperty
    on QueryBuilder<Contact, Contact, QQueryProperty> {
  QueryBuilder<Contact, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPhoneCollection on Isar {
  IsarCollection<Phone> get phones => this.collection();
}

const PhoneSchema = CollectionSchema(
  name: r'Phone',
  id: -4768202764507660184,
  properties: {
    r'label': PropertySchema(
      id: 0,
      name: r'label',
      type: IsarType.string,
    ),
    r'number': PropertySchema(
      id: 1,
      name: r'number',
      type: IsarType.string,
    )
  },
  estimateSize: _phoneEstimateSize,
  serialize: _phoneSerialize,
  deserialize: _phoneDeserialize,
  deserializeProp: _phoneDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _phoneGetId,
  getLinks: _phoneGetLinks,
  attach: _phoneAttach,
  version: '3.1.0',
);

int _phoneEstimateSize(
  Phone object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.label.length * 3;
  bytesCount += 3 + object.number.length * 3;
  return bytesCount;
}

void _phoneSerialize(
  Phone object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.label);
  writer.writeString(offsets[1], object.number);
}

Phone _phoneDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Phone();
  object.id = id;
  object.label = reader.readString(offsets[0]);
  object.number = reader.readString(offsets[1]);
  return object;
}

P _phoneDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _phoneGetId(Phone object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _phoneGetLinks(Phone object) {
  return [];
}

void _phoneAttach(IsarCollection<dynamic> col, Id id, Phone object) {
  object.id = id;
}

extension PhoneQueryWhereSort on QueryBuilder<Phone, Phone, QWhere> {
  QueryBuilder<Phone, Phone, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PhoneQueryWhere on QueryBuilder<Phone, Phone, QWhereClause> {
  QueryBuilder<Phone, Phone, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Phone, Phone, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Phone, Phone, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Phone, Phone, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Phone, Phone, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension PhoneQueryFilter on QueryBuilder<Phone, Phone, QFilterCondition> {
  QueryBuilder<Phone, Phone, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Phone, Phone, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Phone, Phone, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Phone, Phone, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Phone, Phone, QAfterFilterCondition> labelEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'label',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Phone, Phone, QAfterFilterCondition> labelGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'label',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Phone, Phone, QAfterFilterCondition> labelLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'label',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Phone, Phone, QAfterFilterCondition> labelBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'label',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Phone, Phone, QAfterFilterCondition> labelStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'label',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Phone, Phone, QAfterFilterCondition> labelEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'label',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Phone, Phone, QAfterFilterCondition> labelContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'label',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Phone, Phone, QAfterFilterCondition> labelMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'label',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Phone, Phone, QAfterFilterCondition> labelIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'label',
        value: '',
      ));
    });
  }

  QueryBuilder<Phone, Phone, QAfterFilterCondition> labelIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'label',
        value: '',
      ));
    });
  }

  QueryBuilder<Phone, Phone, QAfterFilterCondition> numberEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'number',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Phone, Phone, QAfterFilterCondition> numberGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'number',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Phone, Phone, QAfterFilterCondition> numberLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'number',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Phone, Phone, QAfterFilterCondition> numberBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'number',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Phone, Phone, QAfterFilterCondition> numberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'number',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Phone, Phone, QAfterFilterCondition> numberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'number',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Phone, Phone, QAfterFilterCondition> numberContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'number',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Phone, Phone, QAfterFilterCondition> numberMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'number',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Phone, Phone, QAfterFilterCondition> numberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'number',
        value: '',
      ));
    });
  }

  QueryBuilder<Phone, Phone, QAfterFilterCondition> numberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'number',
        value: '',
      ));
    });
  }
}

extension PhoneQueryObject on QueryBuilder<Phone, Phone, QFilterCondition> {}

extension PhoneQueryLinks on QueryBuilder<Phone, Phone, QFilterCondition> {}

extension PhoneQuerySortBy on QueryBuilder<Phone, Phone, QSortBy> {
  QueryBuilder<Phone, Phone, QAfterSortBy> sortByLabel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'label', Sort.asc);
    });
  }

  QueryBuilder<Phone, Phone, QAfterSortBy> sortByLabelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'label', Sort.desc);
    });
  }

  QueryBuilder<Phone, Phone, QAfterSortBy> sortByNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.asc);
    });
  }

  QueryBuilder<Phone, Phone, QAfterSortBy> sortByNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.desc);
    });
  }
}

extension PhoneQuerySortThenBy on QueryBuilder<Phone, Phone, QSortThenBy> {
  QueryBuilder<Phone, Phone, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Phone, Phone, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Phone, Phone, QAfterSortBy> thenByLabel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'label', Sort.asc);
    });
  }

  QueryBuilder<Phone, Phone, QAfterSortBy> thenByLabelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'label', Sort.desc);
    });
  }

  QueryBuilder<Phone, Phone, QAfterSortBy> thenByNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.asc);
    });
  }

  QueryBuilder<Phone, Phone, QAfterSortBy> thenByNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.desc);
    });
  }
}

extension PhoneQueryWhereDistinct on QueryBuilder<Phone, Phone, QDistinct> {
  QueryBuilder<Phone, Phone, QDistinct> distinctByLabel(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'label', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Phone, Phone, QDistinct> distinctByNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'number', caseSensitive: caseSensitive);
    });
  }
}

extension PhoneQueryProperty on QueryBuilder<Phone, Phone, QQueryProperty> {
  QueryBuilder<Phone, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Phone, String, QQueryOperations> labelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'label');
    });
  }

  QueryBuilder<Phone, String, QQueryOperations> numberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'number');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetEmailCollection on Isar {
  IsarCollection<Email> get emails => this.collection();
}

const EmailSchema = CollectionSchema(
  name: r'Email',
  id: 2558369672199317214,
  properties: {
    r'address': PropertySchema(
      id: 0,
      name: r'address',
      type: IsarType.string,
    ),
    r'label': PropertySchema(
      id: 1,
      name: r'label',
      type: IsarType.string,
    )
  },
  estimateSize: _emailEstimateSize,
  serialize: _emailSerialize,
  deserialize: _emailDeserialize,
  deserializeProp: _emailDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _emailGetId,
  getLinks: _emailGetLinks,
  attach: _emailAttach,
  version: '3.1.0',
);

int _emailEstimateSize(
  Email object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.address.length * 3;
  bytesCount += 3 + object.label.length * 3;
  return bytesCount;
}

void _emailSerialize(
  Email object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.address);
  writer.writeString(offsets[1], object.label);
}

Email _emailDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Email();
  object.address = reader.readString(offsets[0]);
  object.id = id;
  object.label = reader.readString(offsets[1]);
  return object;
}

P _emailDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _emailGetId(Email object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _emailGetLinks(Email object) {
  return [];
}

void _emailAttach(IsarCollection<dynamic> col, Id id, Email object) {
  object.id = id;
}

extension EmailQueryWhereSort on QueryBuilder<Email, Email, QWhere> {
  QueryBuilder<Email, Email, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension EmailQueryWhere on QueryBuilder<Email, Email, QWhereClause> {
  QueryBuilder<Email, Email, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Email, Email, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Email, Email, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Email, Email, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Email, Email, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension EmailQueryFilter on QueryBuilder<Email, Email, QFilterCondition> {
  QueryBuilder<Email, Email, QAfterFilterCondition> addressEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Email, Email, QAfterFilterCondition> addressGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Email, Email, QAfterFilterCondition> addressLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Email, Email, QAfterFilterCondition> addressBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'address',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Email, Email, QAfterFilterCondition> addressStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Email, Email, QAfterFilterCondition> addressEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Email, Email, QAfterFilterCondition> addressContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Email, Email, QAfterFilterCondition> addressMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'address',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Email, Email, QAfterFilterCondition> addressIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'address',
        value: '',
      ));
    });
  }

  QueryBuilder<Email, Email, QAfterFilterCondition> addressIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'address',
        value: '',
      ));
    });
  }

  QueryBuilder<Email, Email, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Email, Email, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Email, Email, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Email, Email, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Email, Email, QAfterFilterCondition> labelEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'label',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Email, Email, QAfterFilterCondition> labelGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'label',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Email, Email, QAfterFilterCondition> labelLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'label',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Email, Email, QAfterFilterCondition> labelBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'label',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Email, Email, QAfterFilterCondition> labelStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'label',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Email, Email, QAfterFilterCondition> labelEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'label',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Email, Email, QAfterFilterCondition> labelContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'label',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Email, Email, QAfterFilterCondition> labelMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'label',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Email, Email, QAfterFilterCondition> labelIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'label',
        value: '',
      ));
    });
  }

  QueryBuilder<Email, Email, QAfterFilterCondition> labelIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'label',
        value: '',
      ));
    });
  }
}

extension EmailQueryObject on QueryBuilder<Email, Email, QFilterCondition> {}

extension EmailQueryLinks on QueryBuilder<Email, Email, QFilterCondition> {}

extension EmailQuerySortBy on QueryBuilder<Email, Email, QSortBy> {
  QueryBuilder<Email, Email, QAfterSortBy> sortByAddress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.asc);
    });
  }

  QueryBuilder<Email, Email, QAfterSortBy> sortByAddressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.desc);
    });
  }

  QueryBuilder<Email, Email, QAfterSortBy> sortByLabel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'label', Sort.asc);
    });
  }

  QueryBuilder<Email, Email, QAfterSortBy> sortByLabelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'label', Sort.desc);
    });
  }
}

extension EmailQuerySortThenBy on QueryBuilder<Email, Email, QSortThenBy> {
  QueryBuilder<Email, Email, QAfterSortBy> thenByAddress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.asc);
    });
  }

  QueryBuilder<Email, Email, QAfterSortBy> thenByAddressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.desc);
    });
  }

  QueryBuilder<Email, Email, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Email, Email, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Email, Email, QAfterSortBy> thenByLabel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'label', Sort.asc);
    });
  }

  QueryBuilder<Email, Email, QAfterSortBy> thenByLabelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'label', Sort.desc);
    });
  }
}

extension EmailQueryWhereDistinct on QueryBuilder<Email, Email, QDistinct> {
  QueryBuilder<Email, Email, QDistinct> distinctByAddress(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'address', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Email, Email, QDistinct> distinctByLabel(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'label', caseSensitive: caseSensitive);
    });
  }
}

extension EmailQueryProperty on QueryBuilder<Email, Email, QQueryProperty> {
  QueryBuilder<Email, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Email, String, QQueryOperations> addressProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'address');
    });
  }

  QueryBuilder<Email, String, QQueryOperations> labelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'label');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetStructuredNameCollection on Isar {
  IsarCollection<StructuredName> get structuredNames => this.collection();
}

const StructuredNameSchema = CollectionSchema(
  name: r'StructuredName',
  id: -8055667104550057966,
  properties: {
    r'displayName': PropertySchema(
      id: 0,
      name: r'displayName',
      type: IsarType.string,
    ),
    r'familyName': PropertySchema(
      id: 1,
      name: r'familyName',
      type: IsarType.string,
    ),
    r'givenName': PropertySchema(
      id: 2,
      name: r'givenName',
      type: IsarType.string,
    ),
    r'middleName': PropertySchema(
      id: 3,
      name: r'middleName',
      type: IsarType.string,
    ),
    r'namePrefix': PropertySchema(
      id: 4,
      name: r'namePrefix',
      type: IsarType.string,
    ),
    r'nameSuffix': PropertySchema(
      id: 5,
      name: r'nameSuffix',
      type: IsarType.string,
    )
  },
  estimateSize: _structuredNameEstimateSize,
  serialize: _structuredNameSerialize,
  deserialize: _structuredNameDeserialize,
  deserializeProp: _structuredNameDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _structuredNameGetId,
  getLinks: _structuredNameGetLinks,
  attach: _structuredNameAttach,
  version: '3.1.0',
);

int _structuredNameEstimateSize(
  StructuredName object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.displayName.length * 3;
  bytesCount += 3 + object.familyName.length * 3;
  bytesCount += 3 + object.givenName.length * 3;
  bytesCount += 3 + object.middleName.length * 3;
  bytesCount += 3 + object.namePrefix.length * 3;
  bytesCount += 3 + object.nameSuffix.length * 3;
  return bytesCount;
}

void _structuredNameSerialize(
  StructuredName object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.displayName);
  writer.writeString(offsets[1], object.familyName);
  writer.writeString(offsets[2], object.givenName);
  writer.writeString(offsets[3], object.middleName);
  writer.writeString(offsets[4], object.namePrefix);
  writer.writeString(offsets[5], object.nameSuffix);
}

StructuredName _structuredNameDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = StructuredName();
  object.displayName = reader.readString(offsets[0]);
  object.familyName = reader.readString(offsets[1]);
  object.givenName = reader.readString(offsets[2]);
  object.id = id;
  object.middleName = reader.readString(offsets[3]);
  object.namePrefix = reader.readString(offsets[4]);
  object.nameSuffix = reader.readString(offsets[5]);
  return object;
}

P _structuredNameDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _structuredNameGetId(StructuredName object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _structuredNameGetLinks(StructuredName object) {
  return [];
}

void _structuredNameAttach(
    IsarCollection<dynamic> col, Id id, StructuredName object) {
  object.id = id;
}

extension StructuredNameQueryWhereSort
    on QueryBuilder<StructuredName, StructuredName, QWhere> {
  QueryBuilder<StructuredName, StructuredName, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension StructuredNameQueryWhere
    on QueryBuilder<StructuredName, StructuredName, QWhereClause> {
  QueryBuilder<StructuredName, StructuredName, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension StructuredNameQueryFilter
    on QueryBuilder<StructuredName, StructuredName, QFilterCondition> {
  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      displayNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'displayName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      displayNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'displayName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      displayNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'displayName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      displayNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'displayName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      displayNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'displayName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      displayNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'displayName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      displayNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'displayName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      displayNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'displayName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      displayNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'displayName',
        value: '',
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      displayNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'displayName',
        value: '',
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      familyNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'familyName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      familyNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'familyName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      familyNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'familyName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      familyNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'familyName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      familyNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'familyName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      familyNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'familyName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      familyNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'familyName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      familyNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'familyName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      familyNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'familyName',
        value: '',
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      familyNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'familyName',
        value: '',
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      givenNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'givenName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      givenNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'givenName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      givenNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'givenName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      givenNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'givenName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      givenNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'givenName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      givenNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'givenName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      givenNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'givenName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      givenNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'givenName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      givenNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'givenName',
        value: '',
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      givenNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'givenName',
        value: '',
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      middleNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'middleName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      middleNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'middleName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      middleNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'middleName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      middleNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'middleName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      middleNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'middleName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      middleNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'middleName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      middleNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'middleName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      middleNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'middleName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      middleNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'middleName',
        value: '',
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      middleNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'middleName',
        value: '',
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      namePrefixEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'namePrefix',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      namePrefixGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'namePrefix',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      namePrefixLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'namePrefix',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      namePrefixBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'namePrefix',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      namePrefixStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'namePrefix',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      namePrefixEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'namePrefix',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      namePrefixContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'namePrefix',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      namePrefixMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'namePrefix',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      namePrefixIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'namePrefix',
        value: '',
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      namePrefixIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'namePrefix',
        value: '',
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      nameSuffixEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nameSuffix',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      nameSuffixGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nameSuffix',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      nameSuffixLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nameSuffix',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      nameSuffixBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nameSuffix',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      nameSuffixStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nameSuffix',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      nameSuffixEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nameSuffix',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      nameSuffixContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nameSuffix',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      nameSuffixMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nameSuffix',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      nameSuffixIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nameSuffix',
        value: '',
      ));
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterFilterCondition>
      nameSuffixIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nameSuffix',
        value: '',
      ));
    });
  }
}

extension StructuredNameQueryObject
    on QueryBuilder<StructuredName, StructuredName, QFilterCondition> {}

extension StructuredNameQueryLinks
    on QueryBuilder<StructuredName, StructuredName, QFilterCondition> {}

extension StructuredNameQuerySortBy
    on QueryBuilder<StructuredName, StructuredName, QSortBy> {
  QueryBuilder<StructuredName, StructuredName, QAfterSortBy>
      sortByDisplayName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'displayName', Sort.asc);
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterSortBy>
      sortByDisplayNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'displayName', Sort.desc);
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterSortBy>
      sortByFamilyName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'familyName', Sort.asc);
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterSortBy>
      sortByFamilyNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'familyName', Sort.desc);
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterSortBy> sortByGivenName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'givenName', Sort.asc);
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterSortBy>
      sortByGivenNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'givenName', Sort.desc);
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterSortBy>
      sortByMiddleName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'middleName', Sort.asc);
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterSortBy>
      sortByMiddleNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'middleName', Sort.desc);
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterSortBy>
      sortByNamePrefix() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'namePrefix', Sort.asc);
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterSortBy>
      sortByNamePrefixDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'namePrefix', Sort.desc);
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterSortBy>
      sortByNameSuffix() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameSuffix', Sort.asc);
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterSortBy>
      sortByNameSuffixDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameSuffix', Sort.desc);
    });
  }
}

extension StructuredNameQuerySortThenBy
    on QueryBuilder<StructuredName, StructuredName, QSortThenBy> {
  QueryBuilder<StructuredName, StructuredName, QAfterSortBy>
      thenByDisplayName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'displayName', Sort.asc);
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterSortBy>
      thenByDisplayNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'displayName', Sort.desc);
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterSortBy>
      thenByFamilyName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'familyName', Sort.asc);
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterSortBy>
      thenByFamilyNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'familyName', Sort.desc);
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterSortBy> thenByGivenName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'givenName', Sort.asc);
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterSortBy>
      thenByGivenNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'givenName', Sort.desc);
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterSortBy>
      thenByMiddleName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'middleName', Sort.asc);
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterSortBy>
      thenByMiddleNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'middleName', Sort.desc);
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterSortBy>
      thenByNamePrefix() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'namePrefix', Sort.asc);
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterSortBy>
      thenByNamePrefixDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'namePrefix', Sort.desc);
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterSortBy>
      thenByNameSuffix() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameSuffix', Sort.asc);
    });
  }

  QueryBuilder<StructuredName, StructuredName, QAfterSortBy>
      thenByNameSuffixDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameSuffix', Sort.desc);
    });
  }
}

extension StructuredNameQueryWhereDistinct
    on QueryBuilder<StructuredName, StructuredName, QDistinct> {
  QueryBuilder<StructuredName, StructuredName, QDistinct> distinctByDisplayName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'displayName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<StructuredName, StructuredName, QDistinct> distinctByFamilyName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'familyName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<StructuredName, StructuredName, QDistinct> distinctByGivenName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'givenName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<StructuredName, StructuredName, QDistinct> distinctByMiddleName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'middleName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<StructuredName, StructuredName, QDistinct> distinctByNamePrefix(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'namePrefix', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<StructuredName, StructuredName, QDistinct> distinctByNameSuffix(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nameSuffix', caseSensitive: caseSensitive);
    });
  }
}

extension StructuredNameQueryProperty
    on QueryBuilder<StructuredName, StructuredName, QQueryProperty> {
  QueryBuilder<StructuredName, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<StructuredName, String, QQueryOperations> displayNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'displayName');
    });
  }

  QueryBuilder<StructuredName, String, QQueryOperations> familyNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'familyName');
    });
  }

  QueryBuilder<StructuredName, String, QQueryOperations> givenNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'givenName');
    });
  }

  QueryBuilder<StructuredName, String, QQueryOperations> middleNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'middleName');
    });
  }

  QueryBuilder<StructuredName, String, QQueryOperations> namePrefixProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'namePrefix');
    });
  }

  QueryBuilder<StructuredName, String, QQueryOperations> nameSuffixProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nameSuffix');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetOrganizationCollection on Isar {
  IsarCollection<Organization> get organizations => this.collection();
}

const OrganizationSchema = CollectionSchema(
  name: r'Organization',
  id: 1420920037853601626,
  properties: {
    r'company': PropertySchema(
      id: 0,
      name: r'company',
      type: IsarType.string,
    ),
    r'department': PropertySchema(
      id: 1,
      name: r'department',
      type: IsarType.string,
    ),
    r'jobDescription': PropertySchema(
      id: 2,
      name: r'jobDescription',
      type: IsarType.string,
    )
  },
  estimateSize: _organizationEstimateSize,
  serialize: _organizationSerialize,
  deserialize: _organizationDeserialize,
  deserializeProp: _organizationDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _organizationGetId,
  getLinks: _organizationGetLinks,
  attach: _organizationAttach,
  version: '3.1.0',
);

int _organizationEstimateSize(
  Organization object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.company.length * 3;
  bytesCount += 3 + object.department.length * 3;
  bytesCount += 3 + object.jobDescription.length * 3;
  return bytesCount;
}

void _organizationSerialize(
  Organization object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.company);
  writer.writeString(offsets[1], object.department);
  writer.writeString(offsets[2], object.jobDescription);
}

Organization _organizationDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Organization();
  object.company = reader.readString(offsets[0]);
  object.department = reader.readString(offsets[1]);
  object.id = id;
  object.jobDescription = reader.readString(offsets[2]);
  return object;
}

P _organizationDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _organizationGetId(Organization object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _organizationGetLinks(Organization object) {
  return [];
}

void _organizationAttach(
    IsarCollection<dynamic> col, Id id, Organization object) {
  object.id = id;
}

extension OrganizationQueryWhereSort
    on QueryBuilder<Organization, Organization, QWhere> {
  QueryBuilder<Organization, Organization, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension OrganizationQueryWhere
    on QueryBuilder<Organization, Organization, QWhereClause> {
  QueryBuilder<Organization, Organization, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Organization, Organization, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Organization, Organization, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Organization, Organization, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Organization, Organization, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension OrganizationQueryFilter
    on QueryBuilder<Organization, Organization, QFilterCondition> {
  QueryBuilder<Organization, Organization, QAfterFilterCondition>
      companyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Organization, Organization, QAfterFilterCondition>
      companyGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Organization, Organization, QAfterFilterCondition>
      companyLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Organization, Organization, QAfterFilterCondition>
      companyBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'company',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Organization, Organization, QAfterFilterCondition>
      companyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Organization, Organization, QAfterFilterCondition>
      companyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Organization, Organization, QAfterFilterCondition>
      companyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Organization, Organization, QAfterFilterCondition>
      companyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'company',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Organization, Organization, QAfterFilterCondition>
      companyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'company',
        value: '',
      ));
    });
  }

  QueryBuilder<Organization, Organization, QAfterFilterCondition>
      companyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'company',
        value: '',
      ));
    });
  }

  QueryBuilder<Organization, Organization, QAfterFilterCondition>
      departmentEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'department',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Organization, Organization, QAfterFilterCondition>
      departmentGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'department',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Organization, Organization, QAfterFilterCondition>
      departmentLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'department',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Organization, Organization, QAfterFilterCondition>
      departmentBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'department',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Organization, Organization, QAfterFilterCondition>
      departmentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'department',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Organization, Organization, QAfterFilterCondition>
      departmentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'department',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Organization, Organization, QAfterFilterCondition>
      departmentContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'department',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Organization, Organization, QAfterFilterCondition>
      departmentMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'department',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Organization, Organization, QAfterFilterCondition>
      departmentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'department',
        value: '',
      ));
    });
  }

  QueryBuilder<Organization, Organization, QAfterFilterCondition>
      departmentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'department',
        value: '',
      ));
    });
  }

  QueryBuilder<Organization, Organization, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Organization, Organization, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Organization, Organization, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Organization, Organization, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Organization, Organization, QAfterFilterCondition>
      jobDescriptionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'jobDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Organization, Organization, QAfterFilterCondition>
      jobDescriptionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'jobDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Organization, Organization, QAfterFilterCondition>
      jobDescriptionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'jobDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Organization, Organization, QAfterFilterCondition>
      jobDescriptionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'jobDescription',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Organization, Organization, QAfterFilterCondition>
      jobDescriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'jobDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Organization, Organization, QAfterFilterCondition>
      jobDescriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'jobDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Organization, Organization, QAfterFilterCondition>
      jobDescriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'jobDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Organization, Organization, QAfterFilterCondition>
      jobDescriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'jobDescription',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Organization, Organization, QAfterFilterCondition>
      jobDescriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'jobDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<Organization, Organization, QAfterFilterCondition>
      jobDescriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'jobDescription',
        value: '',
      ));
    });
  }
}

extension OrganizationQueryObject
    on QueryBuilder<Organization, Organization, QFilterCondition> {}

extension OrganizationQueryLinks
    on QueryBuilder<Organization, Organization, QFilterCondition> {}

extension OrganizationQuerySortBy
    on QueryBuilder<Organization, Organization, QSortBy> {
  QueryBuilder<Organization, Organization, QAfterSortBy> sortByCompany() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'company', Sort.asc);
    });
  }

  QueryBuilder<Organization, Organization, QAfterSortBy> sortByCompanyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'company', Sort.desc);
    });
  }

  QueryBuilder<Organization, Organization, QAfterSortBy> sortByDepartment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'department', Sort.asc);
    });
  }

  QueryBuilder<Organization, Organization, QAfterSortBy>
      sortByDepartmentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'department', Sort.desc);
    });
  }

  QueryBuilder<Organization, Organization, QAfterSortBy>
      sortByJobDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jobDescription', Sort.asc);
    });
  }

  QueryBuilder<Organization, Organization, QAfterSortBy>
      sortByJobDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jobDescription', Sort.desc);
    });
  }
}

extension OrganizationQuerySortThenBy
    on QueryBuilder<Organization, Organization, QSortThenBy> {
  QueryBuilder<Organization, Organization, QAfterSortBy> thenByCompany() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'company', Sort.asc);
    });
  }

  QueryBuilder<Organization, Organization, QAfterSortBy> thenByCompanyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'company', Sort.desc);
    });
  }

  QueryBuilder<Organization, Organization, QAfterSortBy> thenByDepartment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'department', Sort.asc);
    });
  }

  QueryBuilder<Organization, Organization, QAfterSortBy>
      thenByDepartmentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'department', Sort.desc);
    });
  }

  QueryBuilder<Organization, Organization, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Organization, Organization, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Organization, Organization, QAfterSortBy>
      thenByJobDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jobDescription', Sort.asc);
    });
  }

  QueryBuilder<Organization, Organization, QAfterSortBy>
      thenByJobDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jobDescription', Sort.desc);
    });
  }
}

extension OrganizationQueryWhereDistinct
    on QueryBuilder<Organization, Organization, QDistinct> {
  QueryBuilder<Organization, Organization, QDistinct> distinctByCompany(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'company', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Organization, Organization, QDistinct> distinctByDepartment(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'department', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Organization, Organization, QDistinct> distinctByJobDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'jobDescription',
          caseSensitive: caseSensitive);
    });
  }
}

extension OrganizationQueryProperty
    on QueryBuilder<Organization, Organization, QQueryProperty> {
  QueryBuilder<Organization, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Organization, String, QQueryOperations> companyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'company');
    });
  }

  QueryBuilder<Organization, String, QQueryOperations> departmentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'department');
    });
  }

  QueryBuilder<Organization, String, QQueryOperations>
      jobDescriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'jobDescription');
    });
  }
}
