import 'package:test_app/generated/json/base/json_convert_content.dart';
import 'package:test_app/network/models/login_by_phone_entity.dart';

LoginByPhoneEntity $LoginByPhoneEntityFromJson(Map<String, dynamic> json) {
  final LoginByPhoneEntity loginByPhoneEntity = LoginByPhoneEntity();
  final bool? status = jsonConvert.convert<bool>(json['status']);
  if (status != null) {
    loginByPhoneEntity.status = status;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    loginByPhoneEntity.message = message;
  }
  final LoginByPhoneData? data = jsonConvert.convert<LoginByPhoneData>(
      json['data']);
  if (data != null) {
    loginByPhoneEntity.data = data;
  }
  return loginByPhoneEntity;
}

Map<String, dynamic> $LoginByPhoneEntityToJson(LoginByPhoneEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['status'] = entity.status;
  data['message'] = entity.message;
  data['data'] = entity.data.toJson();
  return data;
}

extension LoginByPhoneEntityExtension on LoginByPhoneEntity {
  LoginByPhoneEntity copyWith({
    bool? status,
    String? message,
    LoginByPhoneData? data,
  }) {
    return LoginByPhoneEntity()
      ..status = status ?? this.status
      ..message = message ?? this.message
      ..data = data ?? this.data;
  }
}

LoginByPhoneData $LoginByPhoneDataFromJson(Map<String, dynamic> json) {
  final LoginByPhoneData loginByPhoneData = LoginByPhoneData();
  final String? phoneNumber = jsonConvert.convert<String>(json['phone_number']);
  if (phoneNumber != null) {
    loginByPhoneData.phoneNumber = phoneNumber;
  }
  return loginByPhoneData;
}

Map<String, dynamic> $LoginByPhoneDataToJson(LoginByPhoneData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['phone_number'] = entity.phoneNumber;
  return data;
}

extension LoginByPhoneDataExtension on LoginByPhoneData {
  LoginByPhoneData copyWith({
    String? phoneNumber,
  }) {
    return LoginByPhoneData()
      ..phoneNumber = phoneNumber ?? this.phoneNumber;
  }
}