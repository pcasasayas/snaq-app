import 'package:app/modules/meals/data/datasource/remote/meals_remote_datasource_constants.dart';
import 'package:core/base/data/api/api_client.dart';
import 'package:injectable/injectable.dart';

import 'dto/meal/meal_dto.dart';
import 'meals_remote_datasource.dart';
import 'models/response/getall/meals_getall_response.dart';

@Injectable(as: MealsRemoteDataSource)
class MealsRemoteDataSourceImpl implements MealsRemoteDataSource {
  MealsRemoteDataSourceImpl(this._apiClient);
  
  final ApiClient _apiClient;

  @override
  Future<List<MealDTO>> getMeals() async {
    var response = await _apiClient.get(
      path: MealsRemoteDataSourceConstants.getAllEndpoint
    );
    final mealsResponse = MealsGetAllResponse.fromJson(response.data);
    return mealsResponse.meals;
  }

}