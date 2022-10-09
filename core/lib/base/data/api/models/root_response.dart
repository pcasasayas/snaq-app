import 'package:json_annotation/json_annotation.dart';

import 'base_response.dart';
import 'error_response.dart';

part 'root_response.g.dart';

@JsonSerializable(explicitToJson: true)
class RootResponse implements BaseResponse {

  @JsonKey(name: 'status')
  String? status;

  @JsonKey(name: 'error')
  ErrorResponse? error;

  // ignore: unused_element
  RootResponse._(this.status, this.error);

  RootResponse(this.status, Map<String, dynamic>? error) {
    this.error = error == null
        ? null
        : ErrorResponse.fromJson(error);
  }
  
  factory RootResponse.fromJson(Map<String, dynamic> json) =>
      _$RootResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RootResponseToJson(this);
}