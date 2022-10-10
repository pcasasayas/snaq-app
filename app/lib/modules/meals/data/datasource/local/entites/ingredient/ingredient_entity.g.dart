// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient_entity.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const IngredientEntitySchema = Schema(
  name: r'IngredientEntity',
  id: 2434246641609860603,
  properties: {
    r'name': PropertySchema(
      id: 0,
      name: r'name',
      type: IsarType.string,
    ),
    r'nutrition': PropertySchema(
      id: 1,
      name: r'nutrition',
      type: IsarType.object,
      target: r'NutritionEntity',
    )
  },
  estimateSize: _ingredientEntityEstimateSize,
  serialize: _ingredientEntitySerialize,
  deserialize: _ingredientEntityDeserialize,
  deserializeProp: _ingredientEntityDeserializeProp,
);

int _ingredientEntityEstimateSize(
  IngredientEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.name.length * 3;
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

void _ingredientEntitySerialize(
  IngredientEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.name);
  writer.writeObject<NutritionEntity>(
    offsets[1],
    allOffsets,
    NutritionEntitySchema.serialize,
    object.nutrition,
  );
}

IngredientEntity _ingredientEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IngredientEntity();
  object.name = reader.readString(offsets[0]);
  object.nutrition = reader.readObjectOrNull<NutritionEntity>(
    offsets[1],
    NutritionEntitySchema.deserialize,
    allOffsets,
  );
  return object;
}

P _ingredientEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readObjectOrNull<NutritionEntity>(
        offset,
        NutritionEntitySchema.deserialize,
        allOffsets,
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension IngredientEntityQueryFilter
    on QueryBuilder<IngredientEntity, IngredientEntity, QFilterCondition> {
  QueryBuilder<IngredientEntity, IngredientEntity, QAfterFilterCondition>
      nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IngredientEntity, IngredientEntity, QAfterFilterCondition>
      nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IngredientEntity, IngredientEntity, QAfterFilterCondition>
      nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IngredientEntity, IngredientEntity, QAfterFilterCondition>
      nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IngredientEntity, IngredientEntity, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IngredientEntity, IngredientEntity, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IngredientEntity, IngredientEntity, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IngredientEntity, IngredientEntity, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IngredientEntity, IngredientEntity, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<IngredientEntity, IngredientEntity, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<IngredientEntity, IngredientEntity, QAfterFilterCondition>
      nutritionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'nutrition',
      ));
    });
  }

  QueryBuilder<IngredientEntity, IngredientEntity, QAfterFilterCondition>
      nutritionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'nutrition',
      ));
    });
  }
}

extension IngredientEntityQueryObject
    on QueryBuilder<IngredientEntity, IngredientEntity, QFilterCondition> {
  QueryBuilder<IngredientEntity, IngredientEntity, QAfterFilterCondition>
      nutrition(FilterQuery<NutritionEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'nutrition');
    });
  }
}
