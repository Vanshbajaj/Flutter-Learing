import 'package:test_app/generated/json/base/json_convert_content.dart';
import 'package:test_app/network/models/verfiy_otp_entity.dart';

VerfiyOtpEntity $VerfiyOtpEntityFromJson(Map<String, dynamic> json) {
  final VerfiyOtpEntity verfiyOtpEntity = VerfiyOtpEntity();
  final bool? status = jsonConvert.convert<bool>(json['status']);
  if (status != null) {
    verfiyOtpEntity.status = status;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    verfiyOtpEntity.message = message;
  }
  final VerfiyOtpData? data = jsonConvert.convert<VerfiyOtpData>(json['data']);
  if (data != null) {
    verfiyOtpEntity.data = data;
  }
  return verfiyOtpEntity;
}

Map<String, dynamic> $VerfiyOtpEntityToJson(VerfiyOtpEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['status'] = entity.status;
  data['message'] = entity.message;
  data['data'] = entity.data.toJson();
  return data;
}

extension VerfiyOtpEntityExtension on VerfiyOtpEntity {
  VerfiyOtpEntity copyWith({
    bool? status,
    String? message,
    VerfiyOtpData? data,
  }) {
    return VerfiyOtpEntity()
      ..status = status ?? this.status
      ..message = message ?? this.message
      ..data = data ?? this.data;
  }
}

VerfiyOtpData $VerfiyOtpDataFromJson(Map<String, dynamic> json) {
  final VerfiyOtpData verfiyOtpData = VerfiyOtpData();
  final String? apiToken = jsonConvert.convert<String>(json['api_token']);
  if (apiToken != null) {
    verfiyOtpData.apiToken = apiToken;
  }
  final VerfiyOtpDataData? data = jsonConvert.convert<VerfiyOtpDataData>(
      json['data']);
  if (data != null) {
    verfiyOtpData.data = data;
  }
  return verfiyOtpData;
}

Map<String, dynamic> $VerfiyOtpDataToJson(VerfiyOtpData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['api_token'] = entity.apiToken;
  data['data'] = entity.data.toJson();
  return data;
}

extension VerfiyOtpDataExtension on VerfiyOtpData {
  VerfiyOtpData copyWith({
    String? apiToken,
    VerfiyOtpDataData? data,
  }) {
    return VerfiyOtpData()
      ..apiToken = apiToken ?? this.apiToken
      ..data = data ?? this.data;
  }
}

VerfiyOtpDataData $VerfiyOtpDataDataFromJson(Map<String, dynamic> json) {
  final VerfiyOtpDataData verfiyOtpDataData = VerfiyOtpDataData();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    verfiyOtpDataData.id = id;
  }
  final String? roleId = jsonConvert.convert<String>(json['role_id']);
  if (roleId != null) {
    verfiyOtpDataData.roleId = roleId;
  }
  final dynamic profileImageId = json['profile_image_id'];
  if (profileImageId != null) {
    verfiyOtpDataData.profileImageId = profileImageId;
  }
  final String? firstName = jsonConvert.convert<String>(json['first_name']);
  if (firstName != null) {
    verfiyOtpDataData.firstName = firstName;
  }
  final String? lastName = jsonConvert.convert<String>(json['last_name']);
  if (lastName != null) {
    verfiyOtpDataData.lastName = lastName;
  }
  final dynamic username = json['username'];
  if (username != null) {
    verfiyOtpDataData.username = username;
  }
  final String? email = jsonConvert.convert<String>(json['email']);
  if (email != null) {
    verfiyOtpDataData.email = email;
  }
  final String? phoneCode = jsonConvert.convert<String>(json['phone_code']);
  if (phoneCode != null) {
    verfiyOtpDataData.phoneCode = phoneCode;
  }
  final String? phoneNumber = jsonConvert.convert<String>(json['phone_number']);
  if (phoneNumber != null) {
    verfiyOtpDataData.phoneNumber = phoneNumber;
  }
  final dynamic dob = json['dob'];
  if (dob != null) {
    verfiyOtpDataData.dob = dob;
  }
  final dynamic companyRegistered = json['company_registered'];
  if (companyRegistered != null) {
    verfiyOtpDataData.companyRegistered = companyRegistered;
  }
  final dynamic company = json['company'];
  if (company != null) {
    verfiyOtpDataData.company = company;
  }
  final dynamic accountType = json['account_type'];
  if (accountType != null) {
    verfiyOtpDataData.accountType = accountType;
  }
  final dynamic anniversary = json['anniversary'];
  if (anniversary != null) {
    verfiyOtpDataData.anniversary = anniversary;
  }
  final String? genderId = jsonConvert.convert<String>(json['gender_id']);
  if (genderId != null) {
    verfiyOtpDataData.genderId = genderId;
  }
  final dynamic countryId = json['country_id'];
  if (countryId != null) {
    verfiyOtpDataData.countryId = countryId;
  }
  final dynamic zipCode = json['zip_code'];
  if (zipCode != null) {
    verfiyOtpDataData.zipCode = zipCode;
  }
  final dynamic stateId = json['state_id'];
  if (stateId != null) {
    verfiyOtpDataData.stateId = stateId;
  }
  final dynamic city = json['city'];
  if (city != null) {
    verfiyOtpDataData.city = city;
  }
  final dynamic locality = json['locality'];
  if (locality != null) {
    verfiyOtpDataData.locality = locality;
  }
  final dynamic address = json['address'];
  if (address != null) {
    verfiyOtpDataData.address = address;
  }
  final String? plainPassword = jsonConvert.convert<String>(
      json['plain_password']);
  if (plainPassword != null) {
    verfiyOtpDataData.plainPassword = plainPassword;
  }
  final dynamic token = json['token'];
  if (token != null) {
    verfiyOtpDataData.token = token;
  }
  final String? apiToken = jsonConvert.convert<String>(json['api_token']);
  if (apiToken != null) {
    verfiyOtpDataData.apiToken = apiToken;
  }
  final String? otpCode = jsonConvert.convert<String>(json['otp_code']);
  if (otpCode != null) {
    verfiyOtpDataData.otpCode = otpCode;
  }
  final dynamic otpCodeSent = json['otp_code_sent'];
  if (otpCodeSent != null) {
    verfiyOtpDataData.otpCodeSent = otpCodeSent;
  }
  final dynamic otpVerified = json['otp_verified'];
  if (otpVerified != null) {
    verfiyOtpDataData.otpVerified = otpVerified;
  }
  final dynamic emailVerified = json['email_verified'];
  if (emailVerified != null) {
    verfiyOtpDataData.emailVerified = emailVerified;
  }
  final dynamic emailOtpCode = json['email_otp_code'];
  if (emailOtpCode != null) {
    verfiyOtpDataData.emailOtpCode = emailOtpCode;
  }
  final dynamic emailOtpCodeSent = json['email_otp_code_sent'];
  if (emailOtpCodeSent != null) {
    verfiyOtpDataData.emailOtpCodeSent = emailOtpCodeSent;
  }
  final dynamic registerProcess = json['register_process'];
  if (registerProcess != null) {
    verfiyOtpDataData.registerProcess = registerProcess;
  }
  final dynamic registerResource = json['register_resource'];
  if (registerResource != null) {
    verfiyOtpDataData.registerResource = registerResource;
  }
  final dynamic bankAccType = json['bank_acc_type'];
  if (bankAccType != null) {
    verfiyOtpDataData.bankAccType = bankAccType;
  }
  final dynamic bankName = json['bank_name'];
  if (bankName != null) {
    verfiyOtpDataData.bankName = bankName;
  }
  final dynamic bankAccNo = json['bank_acc_no'];
  if (bankAccNo != null) {
    verfiyOtpDataData.bankAccNo = bankAccNo;
  }
  final dynamic bankIfscCode = json['bank_ifsc_code'];
  if (bankIfscCode != null) {
    verfiyOtpDataData.bankIfscCode = bankIfscCode;
  }
  final dynamic cancelCheckFileId = json['cancel_check_file_id'];
  if (cancelCheckFileId != null) {
    verfiyOtpDataData.cancelCheckFileId = cancelCheckFileId;
  }
  final dynamic adharNo = json['adhar_no'];
  if (adharNo != null) {
    verfiyOtpDataData.adharNo = adharNo;
  }
  final dynamic adharCardFileId = json['adhar_card_file_id'];
  if (adharCardFileId != null) {
    verfiyOtpDataData.adharCardFileId = adharCardFileId;
  }
  final dynamic panCardNo = json['pan_card_no'];
  if (panCardNo != null) {
    verfiyOtpDataData.panCardNo = panCardNo;
  }
  final dynamic panCardFileId = json['pan_card_file_id'];
  if (panCardFileId != null) {
    verfiyOtpDataData.panCardFileId = panCardFileId;
  }
  final String? state = jsonConvert.convert<String>(json['state']);
  if (state != null) {
    verfiyOtpDataData.state = state;
  }
  final dynamic gstNo = json['gst_no'];
  if (gstNo != null) {
    verfiyOtpDataData.gstNo = gstNo;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    verfiyOtpDataData.status = status;
  }
  final String? updatedBy = jsonConvert.convert<String>(json['updated_by']);
  if (updatedBy != null) {
    verfiyOtpDataData.updatedBy = updatedBy;
  }
  final dynamic createdBy = json['created_by'];
  if (createdBy != null) {
    verfiyOtpDataData.createdBy = createdBy;
  }
  final String? createdAt = jsonConvert.convert<String>(json['created_at']);
  if (createdAt != null) {
    verfiyOtpDataData.createdAt = createdAt;
  }
  final String? updatedAt = jsonConvert.convert<String>(json['updated_at']);
  if (updatedAt != null) {
    verfiyOtpDataData.updatedAt = updatedAt;
  }
  final dynamic deletedAt = json['deleted_at'];
  if (deletedAt != null) {
    verfiyOtpDataData.deletedAt = deletedAt;
  }
  return verfiyOtpDataData;
}

Map<String, dynamic> $VerfiyOtpDataDataToJson(VerfiyOtpDataData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['role_id'] = entity.roleId;
  data['profile_image_id'] = entity.profileImageId;
  data['first_name'] = entity.firstName;
  data['last_name'] = entity.lastName;
  data['username'] = entity.username;
  data['email'] = entity.email;
  data['phone_code'] = entity.phoneCode;
  data['phone_number'] = entity.phoneNumber;
  data['dob'] = entity.dob;
  data['company_registered'] = entity.companyRegistered;
  data['company'] = entity.company;
  data['account_type'] = entity.accountType;
  data['anniversary'] = entity.anniversary;
  data['gender_id'] = entity.genderId;
  data['country_id'] = entity.countryId;
  data['zip_code'] = entity.zipCode;
  data['state_id'] = entity.stateId;
  data['city'] = entity.city;
  data['locality'] = entity.locality;
  data['address'] = entity.address;
  data['plain_password'] = entity.plainPassword;
  data['token'] = entity.token;
  data['api_token'] = entity.apiToken;
  data['otp_code'] = entity.otpCode;
  data['otp_code_sent'] = entity.otpCodeSent;
  data['otp_verified'] = entity.otpVerified;
  data['email_verified'] = entity.emailVerified;
  data['email_otp_code'] = entity.emailOtpCode;
  data['email_otp_code_sent'] = entity.emailOtpCodeSent;
  data['register_process'] = entity.registerProcess;
  data['register_resource'] = entity.registerResource;
  data['bank_acc_type'] = entity.bankAccType;
  data['bank_name'] = entity.bankName;
  data['bank_acc_no'] = entity.bankAccNo;
  data['bank_ifsc_code'] = entity.bankIfscCode;
  data['cancel_check_file_id'] = entity.cancelCheckFileId;
  data['adhar_no'] = entity.adharNo;
  data['adhar_card_file_id'] = entity.adharCardFileId;
  data['pan_card_no'] = entity.panCardNo;
  data['pan_card_file_id'] = entity.panCardFileId;
  data['state'] = entity.state;
  data['gst_no'] = entity.gstNo;
  data['status'] = entity.status;
  data['updated_by'] = entity.updatedBy;
  data['created_by'] = entity.createdBy;
  data['created_at'] = entity.createdAt;
  data['updated_at'] = entity.updatedAt;
  data['deleted_at'] = entity.deletedAt;
  return data;
}

extension VerfiyOtpDataDataExtension on VerfiyOtpDataData {
  VerfiyOtpDataData copyWith({
    int? id,
    String? roleId,
    dynamic profileImageId,
    String? firstName,
    String? lastName,
    dynamic username,
    String? email,
    String? phoneCode,
    String? phoneNumber,
    dynamic dob,
    dynamic companyRegistered,
    dynamic company,
    dynamic accountType,
    dynamic anniversary,
    String? genderId,
    dynamic countryId,
    dynamic zipCode,
    dynamic stateId,
    dynamic city,
    dynamic locality,
    dynamic address,
    String? plainPassword,
    dynamic token,
    String? apiToken,
    String? otpCode,
    dynamic otpCodeSent,
    dynamic otpVerified,
    dynamic emailVerified,
    dynamic emailOtpCode,
    dynamic emailOtpCodeSent,
    dynamic registerProcess,
    dynamic registerResource,
    dynamic bankAccType,
    dynamic bankName,
    dynamic bankAccNo,
    dynamic bankIfscCode,
    dynamic cancelCheckFileId,
    dynamic adharNo,
    dynamic adharCardFileId,
    dynamic panCardNo,
    dynamic panCardFileId,
    String? state,
    dynamic gstNo,
    String? status,
    String? updatedBy,
    dynamic createdBy,
    String? createdAt,
    String? updatedAt,
    dynamic deletedAt,
  }) {
    return VerfiyOtpDataData()
      ..id = id ?? this.id
      ..roleId = roleId ?? this.roleId
      ..profileImageId = profileImageId ?? this.profileImageId
      ..firstName = firstName ?? this.firstName
      ..lastName = lastName ?? this.lastName
      ..username = username ?? this.username
      ..email = email ?? this.email
      ..phoneCode = phoneCode ?? this.phoneCode
      ..phoneNumber = phoneNumber ?? this.phoneNumber
      ..dob = dob ?? this.dob
      ..companyRegistered = companyRegistered ?? this.companyRegistered
      ..company = company ?? this.company
      ..accountType = accountType ?? this.accountType
      ..anniversary = anniversary ?? this.anniversary
      ..genderId = genderId ?? this.genderId
      ..countryId = countryId ?? this.countryId
      ..zipCode = zipCode ?? this.zipCode
      ..stateId = stateId ?? this.stateId
      ..city = city ?? this.city
      ..locality = locality ?? this.locality
      ..address = address ?? this.address
      ..plainPassword = plainPassword ?? this.plainPassword
      ..token = token ?? this.token
      ..apiToken = apiToken ?? this.apiToken
      ..otpCode = otpCode ?? this.otpCode
      ..otpCodeSent = otpCodeSent ?? this.otpCodeSent
      ..otpVerified = otpVerified ?? this.otpVerified
      ..emailVerified = emailVerified ?? this.emailVerified
      ..emailOtpCode = emailOtpCode ?? this.emailOtpCode
      ..emailOtpCodeSent = emailOtpCodeSent ?? this.emailOtpCodeSent
      ..registerProcess = registerProcess ?? this.registerProcess
      ..registerResource = registerResource ?? this.registerResource
      ..bankAccType = bankAccType ?? this.bankAccType
      ..bankName = bankName ?? this.bankName
      ..bankAccNo = bankAccNo ?? this.bankAccNo
      ..bankIfscCode = bankIfscCode ?? this.bankIfscCode
      ..cancelCheckFileId = cancelCheckFileId ?? this.cancelCheckFileId
      ..adharNo = adharNo ?? this.adharNo
      ..adharCardFileId = adharCardFileId ?? this.adharCardFileId
      ..panCardNo = panCardNo ?? this.panCardNo
      ..panCardFileId = panCardFileId ?? this.panCardFileId
      ..state = state ?? this.state
      ..gstNo = gstNo ?? this.gstNo
      ..status = status ?? this.status
      ..updatedBy = updatedBy ?? this.updatedBy
      ..createdBy = createdBy ?? this.createdBy
      ..createdAt = createdAt ?? this.createdAt
      ..updatedAt = updatedAt ?? this.updatedAt
      ..deletedAt = deletedAt ?? this.deletedAt;
  }
}