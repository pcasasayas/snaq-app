// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrition_entity.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const NutritionEntitySchema = Schema(
  name: r'NutritionEntity',
  id: -4211372650910940371,
  properties: {
    r'carbohydrates': PropertySchema(
      id: 0,
      name: r'carbohydrates',
      type: IsarType.object,
      target: r'NutritionValueEntity',
    ),
    r'energy': PropertySchema(
      id: 1,
      name: r'energy',
      type: IsarType.object,
      target: r'NutritionValueEntity',
    ),
    r'fatTotal': PropertySchema(
      id: 2,
      name: r'fatTotal',
      type: IsarType.object,
      target: r'NutritionValueEntity',
    ),
    r'protein': PropertySchema(
      id: 3,
      name: r'protein',
      type: IsarType.object,
      target: r'NutritionValueEntity',
    )
  },
  estimateSize: _nutritionEntityEstimateSize,
  serialize: _nutritionEntitySerialize,
  deserialize: _nutritionEntityDeserialize,
  deserializeProp: _nutritionEntityDeserializeProp,
);

int _nutritionEntityEstimateSize(
  NutritionEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.carbohydrates;
    if (value != null) {
      bytesCount += 3 +
          NutritionValueEntitySchema.estimateSize(
              value, allOffsets[NutritionValueEntity]!, allOffsets);
    }
  }
  {
    final value = object.energy;
    if (value != null) {
      bytesCount += 3 +
          NutritionValueEntitySchema.estimateSize(
              value, allOffsets[NutritionValueEntity]!, allOffsets);
    }
  }
  {
    final value = object.fatTotal;
    if (value != null) {
      bytesCount += 3 +
          NutritionValueEntitySchema.estimateSize(
              value, allOffsets[NutritionValueEntity]!, allOffsets);
    }
  }
  {
    final value = object.protein;
    if (value != null) {
      bytesCount += 3 +
          NutritionValueEntitySchema.estimateSize(
              value, allOffsets[NutritionValueEntity]!, allOffsets);
    }
  }
  return bytesCount;
}

void _nutritionEntitySerialize(
  NutritionEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<NutritionValueEntity>(
    offsets[0],
    allOffsets,
    NutritionValueEntitySchema.serialize,
    object.carbohydrates,
  );
  writer.writeObject<NutritionValueEntity>(
    offsets[1],
    allOffsets,
    NutritionValueEntitySchema.serialize,
    object.energy,
  );
  writer.writeObject<NutritionValueEntity>(
    offsets[2],
    allOffsets,
    NutritionValueEntitySchema.serialize,
    object.fatTotal,
  );
  writer.writeObject<NutritionValueEntity>(
    offsets[3],
    allOffsets,
    NutritionValueEntitySchema.serialize,
    object.protein,
  );
}

NutritionEntity _nutritionEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = NutritionEntity();
  object.carbohydrates = reader.readObjectOrNull<NutritionValueEntity>(
    offsets[0],
    NutritionValueEntitySchema.deserialize,
    allOffsets,
  );
  object.energy = reader.readObjectOrNull<NutritionValueEntity>(
    offsets[1],
    NutritionValueEntitySchema.deserialize,
    allOffsets,
  );
  object.fatTotal = reader.readObjectOrNull<NutritionValueEntity>(
    offsets[2],
    NutritionValueEntitySchema.deserialize,
    allOffsets,
  );
  object.protein = reader.readObjectOrNull<NutritionValueEntity>(
    offsets[3],
    NutritionValueEntitySchema.deserialize,
    allOffsets,
  );
  return object;
}

P _nutritionEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<NutritionValueEntity>(
        offset,
        NutritionValueEntitySchema.deserialize,
        allOffsets,
      )) as P;
    case 1:
      return (reader.readObjectOrNull<NutritionValueEntity>(
        offset,
        NutritionValueEntitySchema.deserialize,
        allOffsets,
      )) as P;
    case 2:
      return (reader.readObjectOrNull<NutritionValueEntity>(
        offset,
        NutritionValueEntitySchema.deserialize,
        allOffsets,
      )) as P;
    case 3:
      return (reader.readObjectOrNull<NutritionValueEntity>(
        offset,
        NutritionValueEntitySchema.deserialize,
        allOffsets,
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension NutritionEntityQueryFilter
    on QueryBuilder<NutritionEntity, NutritionEntity, QFilterCondition> {
  QueryBuilder<NutritionEntity, NutritionEntity, QAfterFilterCondition>
      carbohydratesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'carbohydrates',
      ));
    });
  }

  QueryBuilder<NutritionEntity, NutritionEntity, QAfterFilterCondition>
      carbohydratesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'carbohydrates',
      ));
    });
  }

  QueryBuilder<NutritionEntity, NutritionEntity, QAfterFilterCondition>
      energyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'energy',
      ));
    });
  }

  QueryBuilder<NutritionEntity, NutritionEntity, QAfterFilterCondition>
      energyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'energy',
      ));
    });
  }

  QueryBuilder<NutritionEntity, NutritionEntity, QAfterFilterCondition>
      fatTotalIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fatTotal',
      ));
    });
  }

  QueryBuilder<NutritionEntity, NutritionEntity, QAfterFilterCondition>
      fatTotalIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fatTotal',
      ));
    });
  }

  QueryBuilder<NutritionEntity, NutritionEntity, QAfterFilterCondition>
      proteinIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'protein',
      ));
    });
  }

  QueryBuilder<NutritionEntity, NutritionEntity, QAfterFilterCondition>
      proteinIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'protein',
      ));
    });
  }
}

extension NutritionEntityQueryObject
    on QueryBuilder<NutritionEntity, NutritionEntity, QFilterCondition> {
  QueryBuilder<NutritionEntity, NutritionEntity, QAfterFilterCondition>
      carbohydrates(FilterQuery<NutritionValueEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'carbohydrates');
    });
  }

  QueryBuilder<NutritionEntity, NutritionEntity, QAfterFilterCondition> energy(
      FilterQuery<NutritionValueEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'energy');
    });
  }

  QueryBuilder<NutritionEntity, NutritionEntity, QAfterFilterCondition>
      fatTotal(FilterQuery<NutritionValueEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'fatTotal');
    });
  }

  QueryBuilder<NutritionEntity, NutritionEntity, QAfterFilterCondition> protein(
      FilterQuery<NutritionValueEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'protein');
    });
  }
}
