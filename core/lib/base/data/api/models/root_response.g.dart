// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'root_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RootResponse _$RootResponseFromJson(Map<String, dynamic> json) => RootResponse(
      json['status'] as String?,
      json['error'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$RootResponseToJson(RootResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'error': instance.error?.toJson(),
    };
