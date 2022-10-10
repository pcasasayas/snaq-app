// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetMealEntityCollection on Isar {
  IsarCollection<MealEntity> get mealEntitys => this.collection();
}

const MealEntitySchema = CollectionSchema(
  name: r'MealEntity',
  id: -5087059261752265267,
  properties: {
    r'created': PropertySchema(
      id: 0,
      name: r'created',
      type: IsarType.string,
    ),
    r'externalId': PropertySchema(
      id: 1,
      name: r'externalId',
      type: IsarType.string,
    ),
    r'image': PropertySchema(
      id: 2,
      name: r'image',
      type: IsarType.string,
    ),
    r'mealComponents': PropertySchema(
      id: 3,
      name: r'mealComponents',
      type: IsarType.objectList,
      target: r'MealComponentEntity',
    ),
    r'nutrition': PropertySchema(
      id: 4,
      name: r'nutrition',
      type: IsarType.object,
      target: r'NutritionEntity',
    ),
    r'status': PropertySchema(
      id: 5,
      name: r'status',
      type: IsarType.byte,
      enumMap: _MealEntitystatusEnumValueMap,
    )
  },
  estimateSize: _mealEntityEstimateSize,
  serialize: _mealEntitySerialize,
  deserialize: _mealEntityDeserialize,
  deserializeProp: _mealEntityDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'NutritionEntity': NutritionEntitySchema,
    r'NutritionValueEntity': NutritionValueEntitySchema,
    r'NutritionAbbreviationEntity': NutritionAbbreviationEntitySchema,
    r'MealComponentEntity': MealComponentEntitySchema,
    r'IngredientEntity': IngredientEntitySchema
  },
  getId: _mealEntityGetId,
  getLinks: _mealEntityGetLinks,
  attach: _mealEntityAttach,
  version: '3.0.2',
);

int _mealEntityEstimateSize(
  MealEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.created.length * 3;
  bytesCount += 3 + object.externalId.length * 3;
  bytesCount += 3 + object.image.length * 3;
  bytesCount += 3 + object.mealComponents.length * 3;
  {
    final offsets = allOffsets[MealComponentEntity]!;
    for (var i = 0; i < object.mealComponents.length; i++) {
      final value = object.mealComponents[i];
      bytesCount +=
          MealComponentEntitySchema.estimateSize(value, offsets, allOffsets);
    }
  }
  {
    final value = object.nutrition;
    if (value != null) {
      bytesCount += 3 +
          NutritionEntitySchema.estimateSize(
              value, allOffsets[NutritionEntity]!, allOffsets);
    }
  }
  return bytesCount;
}

void _mealEntitySerialize(
  MealEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.created);
  writer.writeString(offsets[1], object.externalId);
  writer.writeString(offsets[2], object.image);
  writer.writeObjectList<MealComponentEntity>(
    offsets[3],
    allOffsets,
    MealComponentEntitySchema.serialize,
    object.mealComponents,
  );
  writer.writeObject<NutritionEntity>(
    offsets[4],
    allOffsets,
    NutritionEntitySchema.serialize,
    object.nutrition,
  );
  writer.writeByte(offsets[5], object.status.index);
}

MealEntity _mealEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MealEntity();
  object.created = reader.readString(offsets[0]);
  object.externalId = reader.readString(offsets[1]);
  object.id = id;
  object.image = reader.readString(offsets[2]);
  object.mealComponents = reader.readObjectList<MealComponentEntity>(
        offsets[3],
        MealComponentEntitySchema.deserialize,
        allOffsets,
        MealComponentEntity(),
      ) ??
      [];
  object.nutrition = reader.readObjectOrNull<NutritionEntity>(
    offsets[4],
    NutritionEntitySchema.deserialize,
    allOffsets,
  );
  object.status =
      _MealEntitystatusValueEnumMap[reader.readByteOrNull(offsets[5])] ??
          MealStatusEntity.none;
  return object;
}

P _mealEntityDeserializeProp<P>(
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
      return (reader.readObjectList<MealComponentEntity>(
            offset,
            MealComponentEntitySchema.deserialize,
            allOffsets,
            MealComponentEntity(),
          ) ??
          []) as P;
    case 4:
      return (reader.readObjectOrNull<NutritionEntity>(
        offset,
        NutritionEntitySchema.deserialize,
        allOffsets,
      )) as P;
    case 5:
      return (_MealEntitystatusValueEnumMap[reader.readByteOrNull(offset)] ??
          MealStatusEntity.none) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _MealEntitystatusEnumValueMap = {
  'none': 0,
  'liked': 1,
  'disliked': 2,
  'skiped': 3,
};
const _MealEntitystatusValueEnumMap = {
  0: MealStatusEntity.none,
  1: MealStatusEntity.liked,
  2: MealStatusEntity.disliked,
  3: MealStatusEntity.skiped,
};

Id _mealEntityGetId(MealEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _mealEntityGetLinks(MealEntity object) {
  return [];
}

void _mealEntityAttach(IsarCollection<dynamic> col, Id id, MealEntity object) {
  object.id = id;
}

extension MealEntityQueryWhereSort
    on QueryBuilder<MealEntity, MealEntity, QWhere> {
  QueryBuilder<MealEntity, MealEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MealEntityQueryWhere
    on QueryBuilder<MealEntity, MealEntity, QWhereClause> {
  QueryBuilder<MealEntity, MealEntity, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<MealEntity, MealEntity, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterWhereClause> idBetween(
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

extension MealEntityQueryFilter
    on QueryBuilder<MealEntity, MealEntity, QFilterCondition> {
  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition> createdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'created',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition>
      createdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'created',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition> createdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'created',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition> createdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'created',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition> createdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'created',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition> createdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'created',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition> createdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'created',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition> createdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'created',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition> createdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'created',
        value: '',
      ));
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition>
      createdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'created',
        value: '',
      ));
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition> externalIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'externalId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition>
      externalIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'externalId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition>
      externalIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'externalId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition> externalIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'externalId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition>
      externalIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'externalId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition>
      externalIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'externalId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition>
      externalIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'externalId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition> externalIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'externalId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition>
      externalIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'externalId',
        value: '',
      ));
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition>
      externalIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'externalId',
        value: '',
      ));
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition> idBetween(
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

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition> imageEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition> imageGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition> imageLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition> imageBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'image',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition> imageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition> imageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition> imageContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition> imageMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'image',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition> imageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition>
      imageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition>
      mealComponentsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'mealComponents',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition>
      mealComponentsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'mealComponents',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition>
      mealComponentsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'mealComponents',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition>
      mealComponentsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'mealComponents',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition>
      mealComponentsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'mealComponents',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition>
      mealComponentsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'mealComponents',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition>
      nutritionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'nutrition',
      ));
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition>
      nutritionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'nutrition',
      ));
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition> statusEqualTo(
      MealStatusEntity value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition> statusGreaterThan(
    MealStatusEntity value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition> statusLessThan(
    MealStatusEntity value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition> statusBetween(
    MealStatusEntity lower,
    MealStatusEntity upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension MealEntityQueryObject
    on QueryBuilder<MealEntity, MealEntity, QFilterCondition> {
  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition>
      mealComponentsElement(FilterQuery<MealComponentEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'mealComponents');
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterFilterCondition> nutrition(
      FilterQuery<NutritionEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'nutrition');
    });
  }
}

extension MealEntityQueryLinks
    on QueryBuilder<MealEntity, MealEntity, QFilterCondition> {}

extension MealEntityQuerySortBy
    on QueryBuilder<MealEntity, MealEntity, QSortBy> {
  QueryBuilder<MealEntity, MealEntity, QAfterSortBy> sortByCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created', Sort.asc);
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterSortBy> sortByCreatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created', Sort.desc);
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterSortBy> sortByExternalId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'externalId', Sort.asc);
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterSortBy> sortByExternalIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'externalId', Sort.desc);
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterSortBy> sortByImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.asc);
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterSortBy> sortByImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.desc);
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterSortBy> sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }
}

extension MealEntityQuerySortThenBy
    on QueryBuilder<MealEntity, MealEntity, QSortThenBy> {
  QueryBuilder<MealEntity, MealEntity, QAfterSortBy> thenByCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created', Sort.asc);
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterSortBy> thenByCreatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created', Sort.desc);
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterSortBy> thenByExternalId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'externalId', Sort.asc);
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterSortBy> thenByExternalIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'externalId', Sort.desc);
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterSortBy> thenByImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.asc);
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterSortBy> thenByImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.desc);
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<MealEntity, MealEntity, QAfterSortBy> thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }
}

extension MealEntityQueryWhereDistinct
    on QueryBuilder<MealEntity, MealEntity, QDistinct> {
  QueryBuilder<MealEntity, MealEntity, QDistinct> distinctByCreated(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'created', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MealEntity, MealEntity, QDistinct> distinctByExternalId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'externalId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MealEntity, MealEntity, QDistinct> distinctByImage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'image', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MealEntity, MealEntity, QDistinct> distinctByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status');
    });
  }
}

extension MealEntityQueryProperty
    on QueryBuilder<MealEntity, MealEntity, QQueryProperty> {
  QueryBuilder<MealEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MealEntity, String, QQueryOperations> createdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'created');
    });
  }

  QueryBuilder<MealEntity, String, QQueryOperations> externalIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'externalId');
    });
  }

  QueryBuilder<MealEntity, String, QQueryOperations> imageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'image');
    });
  }

  QueryBuilder<MealEntity, List<MealComponentEntity>, QQueryOperations>
      mealComponentsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mealComponents');
    });
  }

  QueryBuilder<MealEntity, NutritionEntity?, QQueryOperations>
      nutritionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nutrition');
    });
  }

  QueryBuilder<MealEntity, MealStatusEntity, QQueryOperations>
      statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }
}
