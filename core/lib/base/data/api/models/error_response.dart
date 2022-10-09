import 'package:json_annotation/json_annotation.dart';
import 'base_response.dart';

part 'error_response.g.dart';

///
/// Message data model
///
@JsonSerializable(explicitToJson: true)
class ErrorResponse extends BaseResponse {

  @JsonKey(name: 'message')
  final String message;

  ErrorResponse({this.message = ''});

  @override
  factory ErrorResponse.fromJson(Map<String, dynamic> json) => _$ErrorResponseFromJson(json);
  
  @override
  Map<String, dynamic> toJson() => _$ErrorResponseToJson(this);  

}