import 'dart:convert';

import 'package:test_app/generated/json/base/json_field.dart';
import 'package:test_app/generated/json/login_response_entity.g.dart';

export 'package:test_app/generated/json/login_response_entity.g.dart';

@JsonSerializable()
class LoginResponseEntity {
	late bool status;
	late String message;
	late LoginResponseData data;

	LoginResponseEntity();

	factory LoginResponseEntity.fromJson(Map<String, dynamic> json) => $LoginResponseEntityFromJson(json);

	Map<String, dynamic> toJson() => $LoginResponseEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class LoginResponseData {
	@JSONField(name: "api_token")
	late String apiToken;
	late LoginResponseDataUser user;

	LoginResponseData();

	factory LoginResponseData.fromJson(Map<String, dynamic> json) => $LoginResponseDataFromJson(json);

	Map<String, dynamic> toJson() => $LoginResponseDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class LoginResponseDataUser {
	late int id;
	@JSONField(name: "role_id")
	late String roleId;
	@JSONField(name: "profile_image_id")
	dynamic profileImageId;
	@JSONField(name: "first_name")
	late String firstName;
	@JSONField(name: "last_name")
	late String lastName;
	dynamic username;
	late String email;
	@JSONField(name: "phone_code")
	late String phoneCode;
	@JSONField(name: "phone_number")
	late String phoneNumber;
	dynamic dob;
	@JSONField(name: "company_registered")
	dynamic companyRegistered;
	dynamic company;
	@JSONField(name: "account_type")
	dynamic accountType;
	dynamic anniversary;
	@JSONField(name: "gender_id")
	late String genderId;
	@JSONField(name: "country_id")
	dynamic countryId;
	@JSONField(name: "zip_code")
	dynamic zipCode;
	@JSONField(name: "state_id")
	dynamic stateId;
	dynamic city;
	dynamic locality;
	dynamic address;
	@JSONField(name: "plain_password")
	late String plainPassword;
	dynamic token;
	@JSONField(name: "api_token")
	late String apiToken;
	@JSONField(name: "otp_code")
	late String otpCode;
	@JSONField(name: "otp_code_sent")
	dynamic otpCodeSent;
	@JSONField(name: "otp_verified")
	dynamic otpVerified;
	@JSONField(name: "email_verified")
	dynamic emailVerified;
	@JSONField(name: "email_otp_code")
	dynamic emailOtpCode;
	@JSONField(name: "email_otp_code_sent")
	dynamic emailOtpCodeSent;
	@JSONField(name: "register_process")
	dynamic registerProcess;
	@JSONField(name: "register_resource")
	dynamic registerResource;
	@JSONField(name: "bank_acc_type")
	dynamic bankAccType;
	@JSONField(name: "bank_name")
	dynamic bankName;
	@JSONField(name: "bank_acc_no")
	dynamic bankAccNo;
	@JSONField(name: "bank_ifsc_code")
	dynamic bankIfscCode;
	@JSONField(name: "cancel_check_file_id")
	dynamic cancelCheckFileId;
	@JSONField(name: "adhar_no")
	dynamic adharNo;
	@JSONField(name: "adhar_card_file_id")
	dynamic adharCardFileId;
	@JSONField(name: "pan_card_no")
	dynamic panCardNo;
	@JSONField(name: "pan_card_file_id")
	dynamic panCardFileId;
	late String state;
	@JSONField(name: "gst_no")
	dynamic gstNo;
	late String status;
	@JSONField(name: "updated_by")
	late String updatedBy;
	@JSONField(name: "created_by")
	dynamic createdBy;
	@JSONField(name: "created_at")
	late String createdAt;
	@JSONField(name: "updated_at")
	late String updatedAt;
	@JSONField(name: "deleted_at")
	dynamic deletedAt;

	LoginResponseDataUser();

	factory LoginResponseDataUser.fromJson(Map<String, dynamic> json) => $LoginResponseDataUserFromJson(json);

	Map<String, dynamic> toJson() => $LoginResponseDataUserToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}