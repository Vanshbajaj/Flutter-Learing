import 'package:test_app/generated/json/base/json_convert_content.dart';
import 'package:test_app/network/models/base_response_entity.dart';

BaseResponseEntity $BaseResponseEntityFromJson(Map<String, dynamic> json) {
  final BaseResponseEntity baseResponseEntity = BaseResponseEntity();
  final bool? status = jsonConvert.convert<bool>(json['status']);
  if (status != null) {
    baseResponseEntity.status = status;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    baseResponseEntity.message = message;
  }
  return baseResponseEntity;
}

Map<String, dynamic> $BaseResponseEntityToJson(BaseResponseEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['status'] = entity.status;
  data['message'] = entity.message;
  return data;
}

extension BaseResponseEntityExtension on BaseResponseEntity {
  BaseResponseEntity copyWith({
    bool? status,
    String? message,
  }) {
    return BaseResponseEntity()
      ..status = status ?? this.status
      ..message = message ?? this.message;
  }
}