// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrition_abbreviation_entity.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const NutritionAbbreviationEntitySchema = Schema(
  name: r'NutritionAbbreviationEntity',
  id: 9104249138664940676,
  properties: {
    r'nutrient': PropertySchema(
      id: 0,
      name: r'nutrient',
      type: IsarType.string,
    ),
    r'unit': PropertySchema(
      id: 1,
      name: r'unit',
      type: IsarType.string,
    )
  },
  estimateSize: _nutritionAbbreviationEntityEstimateSize,
  serialize: _nutritionAbbreviationEntitySerialize,
  deserialize: _nutritionAbbreviationEntityDeserialize,
  deserializeProp: _nutritionAbbreviationEntityDeserializeProp,
);

int _nutritionAbbreviationEntityEstimateSize(
  NutritionAbbreviationEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.nutrient.length * 3;
  bytesCount += 3 + object.unit.length * 3;
  return bytesCount;
}

void _nutritionAbbreviationEntitySerialize(
  NutritionAbbreviationEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.nutrient);
  writer.writeString(offsets[1], object.unit);
}

NutritionAbbreviationEntity _nutritionAbbreviationEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = NutritionAbbreviationEntity();
  object.nutrient = reader.readString(offsets[0]);
  object.unit = reader.readString(offsets[1]);
  return object;
}

P _nutritionAbbreviationEntityDeserializeProp<P>(
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

extension NutritionAbbreviationEntityQueryFilter on QueryBuilder<
    NutritionAbbreviationEntity,
    NutritionAbbreviationEntity,
    QFilterCondition> {
  QueryBuilder<NutritionAbbreviationEntity, NutritionAbbreviationEntity,
      QAfterFilterCondition> nutrientEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nutrient',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutritionAbbreviationEntity, NutritionAbbreviationEntity,
      QAfterFilterCondition> nutrientGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nutrient',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutritionAbbreviationEntity, NutritionAbbreviationEntity,
      QAfterFilterCondition> nutrientLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nutrient',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutritionAbbreviationEntity, NutritionAbbreviationEntity,
      QAfterFilterCondition> nutrientBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nutrient',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutritionAbbreviationEntity, NutritionAbbreviationEntity,
      QAfterFilterCondition> nutrientStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nutrient',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutritionAbbreviationEntity, NutritionAbbreviationEntity,
      QAfterFilterCondition> nutrientEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nutrient',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutritionAbbreviationEntity, NutritionAbbreviationEntity,
          QAfterFilterCondition>
      nutrientContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nutrient',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutritionAbbreviationEntity, NutritionAbbreviationEntity,
          QAfterFilterCondition>
      nutrientMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nutrient',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutritionAbbreviationEntity, NutritionAbbreviationEntity,
      QAfterFilterCondition> nutrientIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nutrient',
        value: '',
      ));
    });
  }

  QueryBuilder<NutritionAbbreviationEntity, NutritionAbbreviationEntity,
      QAfterFilterCondition> nutrientIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nutrient',
        value: '',
      ));
    });
  }

  QueryBuilder<NutritionAbbreviationEntity, NutritionAbbreviationEntity,
      QAfterFilterCondition> unitEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutritionAbbreviationEntity, NutritionAbbreviationEntity,
      QAfterFilterCondition> unitGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'unit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutritionAbbreviationEntity, NutritionAbbreviationEntity,
      QAfterFilterCondition> unitLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'unit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutritionAbbreviationEntity, NutritionAbbreviationEntity,
      QAfterFilterCondition> unitBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'unit',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutritionAbbreviationEntity, NutritionAbbreviationEntity,
      QAfterFilterCondition> unitStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'unit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutritionAbbreviationEntity, NutritionAbbreviationEntity,
      QAfterFilterCondition> unitEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'unit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutritionAbbreviationEntity, NutritionAbbreviationEntity,
          QAfterFilterCondition>
      unitContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'unit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutritionAbbreviationEntity, NutritionAbbreviationEntity,
          QAfterFilterCondition>
      unitMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'unit',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NutritionAbbreviationEntity, NutritionAbbreviationEntity,
      QAfterFilterCondition> unitIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unit',
        value: '',
      ));
    });
  }

  QueryBuilder<NutritionAbbreviationEntity, NutritionAbbreviationEntity,
      QAfterFilterCondition> unitIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'unit',
        value: '',
      ));
    });
  }
}

extension NutritionAbbreviationEntityQueryObject on QueryBuilder<
    NutritionAbbreviationEntity,
    NutritionAbbreviationEntity,
    QFilterCondition> {}
