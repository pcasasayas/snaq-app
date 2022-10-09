abstract class BaseResponse {
  const BaseResponse();

  BaseResponse.fromJson(Map<String, dynamic> json);

  Map<String, dynamic> toJson();
}