import 'package:isar/isar.dart';
import '../abbreviation/nutrition_abbreviation_entity.dart';

part 'nutrition_value_entity.g.dart';

@embedded
class NutritionValueEntity {
  String name = '';

  String unit = '';

  int value = 0;

  double valueWithPrecision = 0;
  
  NutritionAbbreviationEntity? abbreviation;
}