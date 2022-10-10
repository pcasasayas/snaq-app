// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_component_entity.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const MealComponentEntitySchema = Schema(
  name: r'MealComponentEntity',
  id: 3312934371473190583,
  properties: {
    r'mainIngredient': PropertySchema(
      id: 0,
      name: r'mainIngredient',
      type: IsarType.object,
      target: r'IngredientEntity',
    ),
    r'supplementaryIngredients': PropertySchema(
      id: 1,
      name: r'supplementaryIngredients',
      type: IsarType.objectList,
      target: r'IngredientEntity',
    )
  },
  estimateSize: _mealComponentEntityEstimateSize,
  serialize: _mealComponentEntitySerialize,
  deserialize: _mealComponentEntityDeserialize,
  deserializeProp: _mealComponentEntityDeserializeProp,
);

int _mealComponentEntityEstimateSize(
  MealComponentEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.mainIngredient;
    if (value != null) {
      bytesCount += 3 +
          IngredientEntitySchema.estimateSize(
              value, allOffsets[IngredientEntity]!, allOffsets);
    }
  }
  bytesCount += 3 + object.supplementaryIngredients.length * 3;
  {
    final offsets = allOffsets[IngredientEntity]!;
    for (var i = 0; i < object.supplementaryIngredients.length; i++) {
      final value = object.supplementaryIngredients[i];
      bytesCount +=
          IngredientEntitySchema.estimateSize(value, offsets, allOffsets);
    }
  }
  return bytesCount;
}

void _mealComponentEntitySerialize(
  MealComponentEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<IngredientEntity>(
    offsets[0],
    allOffsets,
    IngredientEntitySchema.serialize,
    object.mainIngredient,
  );
  writer.writeObjectList<IngredientEntity>(
    offsets[1],
    allOffsets,
    IngredientEntitySchema.serialize,
    object.supplementaryIngredients,
  );
}

MealComponentEntity _mealComponentEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MealComponentEntity();
  object.mainIngredient = reader.readObjectOrNull<IngredientEntity>(
    offsets[0],
    IngredientEntitySchema.deserialize,
    allOffsets,
  );
  object.supplementaryIngredients = reader.readObjectList<IngredientEntity>(
        offsets[1],
        IngredientEntitySchema.deserialize,
        allOffsets,
        IngredientEntity(),
      ) ??
      [];
  return object;
}

P _mealComponentEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<IngredientEntity>(
        offset,
        IngredientEntitySchema.deserialize,
        allOffsets,
      )) as P;
    case 1:
      return (reader.readObjectList<IngredientEntity>(
            offset,
            IngredientEntitySchema.deserialize,
            allOffsets,
            IngredientEntity(),
          ) ??
          []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension MealComponentEntityQueryFilter on QueryBuilder<MealComponentEntity,
    MealComponentEntity, QFilterCondition> {
  QueryBuilder<MealComponentEntity, MealComponentEntity, QAfterFilterCondition>
      mainIngredientIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'mainIngredient',
      ));
    });
  }

  QueryBuilder<MealComponentEntity, MealComponentEntity, QAfterFilterCondition>
      mainIngredientIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'mainIngredient',
      ));
    });
  }

  QueryBuilder<MealComponentEntity, MealComponentEntity, QAfterFilterCondition>
      supplementaryIngredientsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'supplementaryIngredients',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<MealComponentEntity, MealComponentEntity, QAfterFilterCondition>
      supplementaryIngredientsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'supplementaryIngredients',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<MealComponentEntity, MealComponentEntity, QAfterFilterCondition>
      supplementaryIngredientsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'supplementaryIngredients',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MealComponentEntity, MealComponentEntity, QAfterFilterCondition>
      supplementaryIngredientsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'supplementaryIngredients',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<MealComponentEntity, MealComponentEntity, QAfterFilterCondition>
      supplementaryIngredientsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'supplementaryIngredients',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MealComponentEntity, MealComponentEntity, QAfterFilterCondition>
      supplementaryIngredientsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'supplementaryIngredients',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension MealComponentEntityQueryObject on QueryBuilder<MealComponentEntity,
    MealComponentEntity, QFilterCondition> {
  QueryBuilder<MealComponentEntity, MealComponentEntity, QAfterFilterCondition>
      mainIngredient(FilterQuery<IngredientEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'mainIngredient');
    });
  }

  QueryBuilder<MealComponentEntity, MealComponentEntity, QAfterFilterCondition>
      supplementaryIngredientsElement(FilterQuery<IngredientEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'supplementaryIngredients');
    });
  }
}
