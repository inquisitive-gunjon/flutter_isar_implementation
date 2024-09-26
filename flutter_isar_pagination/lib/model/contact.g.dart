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
  properties: {
    r'emails': PropertySchema(
      id: 0,
      name: r'emails',
      type: IsarType.objectList,
      target: r'Email',
    ),
    r'organization': PropertySchema(
      id: 1,
      name: r'organization',
      type: IsarType.object,
      target: r'Organization',
    ),
    r'phones': PropertySchema(
      id: 2,
      name: r'phones',
      type: IsarType.objectList,
      target: r'Phone',
    ),
    r'structuredName': PropertySchema(
      id: 3,
      name: r'structuredName',
      type: IsarType.object,
      target: r'StructuredName',
    )
  },
  estimateSize: _contactEstimateSize,
  serialize: _contactSerialize,
  deserialize: _contactDeserialize,
  deserializeProp: _contactDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'Phone': PhoneSchema,
    r'Email': EmailSchema,
    r'StructuredName': StructuredNameSchema,
    r'Organization': OrganizationSchema
  },
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
  bytesCount += 3 + object.emails.length * 3;
  {
    final offsets = allOffsets[Email]!;
    for (var i = 0; i < object.emails.length; i++) {
      final value = object.emails[i];
      bytesCount += EmailSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 +
      OrganizationSchema.estimateSize(
          object.organization!, allOffsets[Organization]!, allOffsets);
  bytesCount += 3 + object.phones.length * 3;
  {
    final offsets = allOffsets[Phone]!;
    for (var i = 0; i < object.phones.length; i++) {
      final value = object.phones[i];
      bytesCount += PhoneSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 +
      StructuredNameSchema.estimateSize(
          object.structuredName, allOffsets[StructuredName]!, allOffsets);
  return bytesCount;
}

void _contactSerialize(
  Contact object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObjectList<Email>(
    offsets[0],
    allOffsets,
    EmailSchema.serialize,
    object.emails,
  );
  writer.writeObject<Organization>(
    offsets[1],
    allOffsets,
    OrganizationSchema.serialize,
    object.organization,
  );
  writer.writeObjectList<Phone>(
    offsets[2],
    allOffsets,
    PhoneSchema.serialize,
    object.phones,
  );
  writer.writeObject<StructuredName>(
    offsets[3],
    allOffsets,
    StructuredNameSchema.serialize,
    object.structuredName,
  );
}

Contact _contactDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Contact();
  object.emails = reader.readObjectList<Email>(
        offsets[0],
        EmailSchema.deserialize,
        allOffsets,
        Email(),
      ) ??
      [];
  object.id = id;
  object.organization = reader.readObjectOrNull<Organization>(
        offsets[1],
        OrganizationSchema.deserialize,
        allOffsets,
      ) ??
      Organization();
  object.phones = reader.readObjectList<Phone>(
        offsets[2],
        PhoneSchema.deserialize,
        allOffsets,
        Phone(),
      ) ??
      [];
  object.structuredName = reader.readObjectOrNull<StructuredName>(
        offsets[3],
        StructuredNameSchema.deserialize,
        allOffsets,
      ) ??
      StructuredName();
  return object;
}

P _contactDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectList<Email>(
            offset,
            EmailSchema.deserialize,
            allOffsets,
            Email(),
          ) ??
          []) as P;
    case 1:
      return (reader.readObjectOrNull<Organization>(
            offset,
            OrganizationSchema.deserialize,
            allOffsets,
          ) ??
          Organization()) as P;
    case 2:
      return (reader.readObjectList<Phone>(
            offset,
            PhoneSchema.deserialize,
            allOffsets,
            Phone(),
          ) ??
          []) as P;
    case 3:
      return (reader.readObjectOrNull<StructuredName>(
            offset,
            StructuredNameSchema.deserialize,
            allOffsets,
          ) ??
          StructuredName()) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _contactGetId(Contact object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _contactGetLinks(Contact object) {
  return [];
}

void _contactAttach(IsarCollection<dynamic> col, Id id, Contact object) {
  object.id = id;
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
  QueryBuilder<Contact, Contact, QAfterFilterCondition> emailsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'emails',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> emailsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'emails',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> emailsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'emails',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> emailsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'emails',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> emailsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'emails',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> emailsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'emails',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

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

  QueryBuilder<Contact, Contact, QAfterFilterCondition> phonesLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'phones',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> phonesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'phones',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> phonesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'phones',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> phonesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'phones',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> phonesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'phones',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> phonesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'phones',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension ContactQueryObject
    on QueryBuilder<Contact, Contact, QFilterCondition> {
  QueryBuilder<Contact, Contact, QAfterFilterCondition> emailsElement(
      FilterQuery<Email> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'emails');
    });
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> organization(
      FilterQuery<Organization> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'organization');
    });
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> phonesElement(
      FilterQuery<Phone> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'phones');
    });
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> structuredName(
      FilterQuery<StructuredName> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'structuredName');
    });
  }
}

extension ContactQueryLinks
    on QueryBuilder<Contact, Contact, QFilterCondition> {}

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

  QueryBuilder<Contact, List<Email>, QQueryOperations> emailsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'emails');
    });
  }

  QueryBuilder<Contact, Organization, QQueryOperations> organizationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'organization');
    });
  }

  QueryBuilder<Contact, List<Phone>, QQueryOperations> phonesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'phones');
    });
  }

  QueryBuilder<Contact, StructuredName, QQueryOperations>
      structuredNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'structuredName');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const PhoneSchema = Schema(
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

extension PhoneQueryFilter on QueryBuilder<Phone, Phone, QFilterCondition> {
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

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const EmailSchema = Schema(
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

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const StructuredNameSchema = Schema(
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

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const OrganizationSchema = Schema(
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
