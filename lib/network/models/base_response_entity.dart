import 'package:test_app/generated/json/base/json_field.dart';
import 'package:test_app/generated/json/base_response_entity.g.dart';
import 'dart:convert';
export 'package:test_app/generated/json/base_response_entity.g.dart';

@JsonSerializable()
class BaseResponseEntity {
	late bool status;
	late String message;

	BaseResponseEntity();

	factory BaseResponseEntity.fromJson(Map<String, dynamic> json) => $BaseResponseEntityFromJson(json);

	Map<String, dynamic> toJson() => $BaseResponseEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}