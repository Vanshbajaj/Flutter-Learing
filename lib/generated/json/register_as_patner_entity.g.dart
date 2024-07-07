import 'package:test_app/generated/json/base/json_convert_content.dart';
import 'package:test_app/network/models/register_as_patner_entity.dart';

RegisterAsPatnerEntity $RegisterAsPatnerEntityFromJson(
    Map<String, dynamic> json) {
  final RegisterAsPatnerEntity registerAsPatnerEntity = RegisterAsPatnerEntity();
  final bool? status = jsonConvert.convert<bool>(json['status']);
  if (status != null) {
    registerAsPatnerEntity.status = status;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    registerAsPatnerEntity.message = message;
  }
  final RegisterAsPartnerData? data = jsonConvert.convert<RegisterAsPartnerData>(
      json['data']);
  if (data != null) {
    registerAsPatnerEntity.data = data;
  }
  return registerAsPatnerEntity;
}

Map<String, dynamic> $RegisterAsPatnerEntityToJson(
    RegisterAsPatnerEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['status'] = entity.status;
  data['message'] = entity.message;
  data['data'] = entity.data.toJson();
  return data;
}

extension RegisterAsPatnerEntityExtension on RegisterAsPatnerEntity {
  RegisterAsPatnerEntity copyWith({
    bool? status,
    String? message,
    RegisterAsPartnerData? data,
  }) {
    return RegisterAsPatnerEntity()
      ..status = status ?? this.status
      ..message = message ?? this.message
      ..data = data ?? this.data;
  }
}

RegisterAsPartnerData $RegisterAsPatnerDataFromJson(Map<String, dynamic> json) {
  final RegisterAsPartnerData registerAsPatnerData = RegisterAsPartnerData();
  final String? email = jsonConvert.convert<String>(json['email']);
  if (email != null) {
    registerAsPatnerData.email = email;
  }
  final String? phoneNumber = jsonConvert.convert<String>(json['phone_number']);
  if (phoneNumber != null) {
    registerAsPatnerData.phoneNumber = phoneNumber;
  }
  final String? firstName = jsonConvert.convert<String>(json['first_name']);
  if (firstName != null) {
    registerAsPatnerData.firstName = firstName;
  }
  final String? lastName = jsonConvert.convert<String>(json['last_name']);
  if (lastName != null) {
    registerAsPatnerData.lastName = lastName;
  }
  final String? genderId = jsonConvert.convert<String>(json['gender_id']);
  if (genderId != null) {
    registerAsPatnerData.genderId = genderId;
  }
  final String? stateId = jsonConvert.convert<String>(json['state_id']);
  if (stateId != null) {
    registerAsPatnerData.stateId = stateId;
  }
  final String? city = jsonConvert.convert<String>(json['city']);
  if (city != null) {
    registerAsPatnerData.city = city;
  }
  final String? zipCode = jsonConvert.convert<String>(json['zip_code']);
  if (zipCode != null) {
    registerAsPatnerData.zipCode = zipCode;
  }
  final String? accountType = jsonConvert.convert<String>(json['account_type']);
  if (accountType != null) {
    registerAsPatnerData.accountType = accountType;
  }
  final String? company = jsonConvert.convert<String>(json['company']);
  if (company != null) {
    registerAsPatnerData.company = company;
  }
  final String? companyRegistered = jsonConvert.convert<String>(
      json['company_registered']);
  if (companyRegistered != null) {
    registerAsPatnerData.companyRegistered = companyRegistered;
  }
  final String? dob = jsonConvert.convert<String>(json['dob']);
  if (dob != null) {
    registerAsPatnerData.dob = dob;
  }
  final String? adharNo = jsonConvert.convert<String>(json['adhar_no']);
  if (adharNo != null) {
    registerAsPatnerData.adharNo = adharNo;
  }
  final dynamic adharCard = json['adhar_card'];
  if (adharCard != null) {
    registerAsPatnerData.adharCard = adharCard;
  }
  final String? panCardNo = jsonConvert.convert<String>(json['pan_card_no']);
  if (panCardNo != null) {
    registerAsPatnerData.panCardNo = panCardNo;
  }
  final dynamic panCard = json['pan_card'];
  if (panCard != null) {
    registerAsPatnerData.panCard = panCard;
  }
  final String? bankAccType = jsonConvert.convert<String>(
      json['bank_acc_type']);
  if (bankAccType != null) {
    registerAsPatnerData.bankAccType = bankAccType;
  }
  final String? bankName = jsonConvert.convert<String>(json['bank_name']);
  if (bankName != null) {
    registerAsPatnerData.bankName = bankName;
  }
  final String? bankAccNo = jsonConvert.convert<String>(json['bank_acc_no']);
  if (bankAccNo != null) {
    registerAsPatnerData.bankAccNo = bankAccNo;
  }
  final String? bankIfscCode = jsonConvert.convert<String>(
      json['bank_ifsc_code']);
  if (bankIfscCode != null) {
    registerAsPatnerData.bankIfscCode = bankIfscCode;
  }
  final String? gstNo = jsonConvert.convert<String>(json['gst_no']);
  if (gstNo != null) {
    registerAsPatnerData.gstNo = gstNo;
  }
  final String? step = jsonConvert.convert<String>(json['step']);
  if (step != null) {
    registerAsPatnerData.step = step;
  }
  final String? otpCode = jsonConvert.convert<String>(json['otp_code']);
  if (otpCode != null) {
    registerAsPatnerData.otpCode = otpCode;
  }
  final String? address = jsonConvert.convert<String>(json['address']);
  if (address != null) {
    registerAsPatnerData.address = address;
  }
  final String? password = jsonConvert.convert<String>(json['password']);
  if (password != null) {
    registerAsPatnerData.password = password;
  }
  return registerAsPatnerData;
}

Map<String, dynamic> $RegisterAsPatnerDataToJson(RegisterAsPartnerData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['email'] = entity.email;
  data['phone_number'] = entity.phoneNumber;
  data['first_name'] = entity.firstName;
  data['last_name'] = entity.lastName;
  data['gender_id'] = entity.genderId;
  data['state_id'] = entity.stateId;
  data['city'] = entity.city;
  data['zip_code'] = entity.zipCode;
  data['account_type'] = entity.accountType;
  data['company'] = entity.company;
  data['company_registered'] = entity.companyRegistered;
  data['dob'] = entity.dob;
  data['adhar_no'] = entity.adharNo;
  data['adhar_card'] = entity.adharCard;
  data['pan_card_no'] = entity.panCardNo;
  data['pan_card'] = entity.panCard;
  data['bank_acc_type'] = entity.bankAccType;
  data['bank_name'] = entity.bankName;
  data['bank_acc_no'] = entity.bankAccNo;
  data['bank_ifsc_code'] = entity.bankIfscCode;
  data['gst_no'] = entity.gstNo;
  data['step'] = entity.step;
  data['otp_code'] = entity.otpCode;
  data['address'] = entity.address;
  data['password'] = entity.password;
  return data;
}

extension RegisterAsPatnerDataExtension on RegisterAsPartnerData {
  RegisterAsPartnerData copyWith({
    String? email,
    String? phoneNumber,
    String? firstName,
    String? lastName,
    String? genderId,
    String? stateId,
    String? city,
    String? zipCode,
    String? accountType,
    String? company,
    String? companyRegistered,
    String? dob,
    String? adharNo,
    dynamic adharCard,
    String? panCardNo,
    dynamic panCard,
    String? bankAccType,
    String? bankName,
    String? bankAccNo,
    String? bankIfscCode,
    String? gstNo,
    String? step,
    String? otpCode,
    String? address,
    String? password,
  }) {
    return RegisterAsPartnerData()
      ..email = email ?? this.email
      ..phoneNumber = phoneNumber ?? this.phoneNumber
      ..firstName = firstName ?? this.firstName
      ..lastName = lastName ?? this.lastName
      ..genderId = genderId ?? this.genderId
      ..stateId = stateId ?? this.stateId
      ..city = city ?? this.city
      ..zipCode = zipCode ?? this.zipCode
      ..accountType = accountType ?? this.accountType
      ..company = company ?? this.company
      ..companyRegistered = companyRegistered ?? this.companyRegistered
      ..dob = dob ?? this.dob
      ..adharNo = adharNo ?? this.adharNo
      ..adharCard = adharCard ?? this.adharCard
      ..panCardNo = panCardNo ?? this.panCardNo
      ..panCard = panCard ?? this.panCard
      ..bankAccType = bankAccType ?? this.bankAccType
      ..bankName = bankName ?? this.bankName
      ..bankAccNo = bankAccNo ?? this.bankAccNo
      ..bankIfscCode = bankIfscCode ?? this.bankIfscCode
      ..gstNo = gstNo ?? this.gstNo
      ..step = step ?? this.step
      ..otpCode = otpCode ?? this.otpCode
      ..address = address ?? this.address
      ..password = password ?? this.password;
  }
}