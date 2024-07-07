import 'package:test_app/generated/json/base/json_field.dart';
import 'package:test_app/generated/json/login_by_phone_entity.g.dart';
import 'dart:convert';
export 'package:test_app/generated/json/login_by_phone_entity.g.dart';

@JsonSerializable()
class LoginByPhoneEntity {
	late bool status;
	late String message;
	late LoginByPhoneData data;

	LoginByPhoneEntity();

	factory LoginByPhoneEntity.fromJson(Map<String, dynamic> json) => $LoginByPhoneEntityFromJson(json);

	Map<String, dynamic> toJson() => $LoginByPhoneEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class LoginByPhoneData {
	@JSONField(name: "phone_number")
	late String phoneNumber;

	LoginByPhoneData();

	factory LoginByPhoneData.fromJson(Map<String, dynamic> json) => $LoginByPhoneDataFromJson(json);

	Map<String, dynamic> toJson() => $LoginByPhoneDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}