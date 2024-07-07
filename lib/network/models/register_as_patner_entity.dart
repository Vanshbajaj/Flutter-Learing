import 'package:test_app/generated/json/base/json_field.dart';
import 'package:test_app/generated/json/register_as_patner_entity.g.dart';
import 'dart:convert';
export 'package:test_app/generated/json/register_as_patner_entity.g.dart';

@JsonSerializable()
class RegisterAsPatnerEntity {
	late bool status;
	late String message;
	late RegisterAsPartnerData data;

	RegisterAsPatnerEntity();

	factory RegisterAsPatnerEntity.fromJson(Map<String, dynamic> json) => $RegisterAsPatnerEntityFromJson(json);

	Map<String, dynamic> toJson() => $RegisterAsPatnerEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class RegisterAsPartnerData {
	late String email;
	@JSONField(name: "phone_number")
	late String phoneNumber;
	@JSONField(name: "first_name")
	late String firstName;
	@JSONField(name: "last_name")
	late String lastName;
	@JSONField(name: "gender_id")
	late String genderId;
	@JSONField(name: "state_id")
	late String stateId;
	late String city;
	@JSONField(name: "zip_code")
	late String zipCode;
	@JSONField(name: "account_type")
	late String accountType;
	String? company;
	@JSONField(name: "company_registered")
	String? companyRegistered;
	String? dob;
	@JSONField(name: "adhar_no")
	late String adharNo;
	@JSONField(name: "adhar_card")
	dynamic adharCard;
	@JSONField(name: "pan_card_no")
	late String panCardNo;
	@JSONField(name: "pan_card")
	dynamic panCard;
	@JSONField(name: "bank_acc_type")
	late String bankAccType;
	@JSONField(name: "bank_name")
	late String bankName;
	@JSONField(name: "bank_acc_no")
	late String bankAccNo;
	@JSONField(name: "bank_ifsc_code")
	late String bankIfscCode;
	@JSONField(name: "gst_no")
	String? gstNo;
	late String step;
	@JSONField(name: "otp_code")
	late String otpCode;
	late String address;
	late String password;

	RegisterAsPartnerData();

	factory RegisterAsPartnerData.fromJson(Map<String, dynamic> json) => $RegisterAsPatnerDataFromJson(json);

	Map<String, dynamic> toJson() => $RegisterAsPatnerDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}