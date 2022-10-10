

import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_config_params.freezed.dart';

part 'app_config_params.g.dart';

@freezed
class AppConfigParams with _$AppConfigParams {
  const factory AppConfigParams({
    required String baseApiUrl,
  }) = _AppConfigParams;

  factory AppConfigParams.fromJson(Map<String, Object?> json)
      => _$AppConfigParamsFromJson(json);
}