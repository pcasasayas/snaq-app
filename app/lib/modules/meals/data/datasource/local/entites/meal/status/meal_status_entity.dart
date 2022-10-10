
import 'package:app/modules/meals/domain/models/meal/status/meal_status_model.dart';

enum MealStatusEntity {
  none,
  liked,
  disliked,
  skiped,
}

extension MealStatusEntityExtension on MealStatusEntity {
  MealStatusModel toModel() {
    switch (this) {
      case MealStatusEntity.none: return MealStatusModel.none;
      case MealStatusEntity.liked: return MealStatusModel.liked;
      case MealStatusEntity.disliked: return MealStatusModel.disliked;
      case MealStatusEntity.skiped: return MealStatusModel.skiped;
      default: return MealStatusModel.none;
    }
  }
}

abstract class MealStatusEntityParser {
  static MealStatusEntity fromModel(MealStatusModel model) {
    switch (model) {
      case MealStatusModel.none: return MealStatusEntity.none;
      case MealStatusModel.liked: return MealStatusEntity.liked;
      case MealStatusModel.disliked: return MealStatusEntity.disliked;
      case MealStatusModel.skiped: return MealStatusEntity.skiped;
      default: return MealStatusEntity.none;
    }
  }
}
