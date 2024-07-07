
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:test_app/ApiConstants.dart';
import 'package:test_app/network/models/login_by_phone_entity.dart';
import 'package:test_app/network/models/register_as_patner_entity.dart';
import 'package:test_app/screens/AssociationPartnerRegistrationScreen2.dart';
import 'package:test_app/screens/HomePage.dart';
import 'package:test_app/screens/VerfiyAccount.dart';

import '../network/models/login_response_entity.dart';
import '../screens/verify_phone_screen.dart';
import '../services/ApiService.dart';

class LoginViewModel extends ChangeNotifier {
  final ApiService _apiService = ApiService();
  bool loading = false;
  String? errorMessage;

  Future<void> loginByEmail(BuildContext context, String email,
      String password) async {
    loading = true;
    errorMessage = null;
    notifyListeners();

    try {
      final response = await _apiService.post(ApiConstants.loginByEmail, data: {
        'email': email,
        'password': password,
      });

      if (response.statusCode == 200 && response.data != null) {
        final loginResponse = LoginResponseEntity.fromJson(response.data);
        if (loginResponse.status) {
          // Handle successful login
          print('Login Successful');
          Navigator.pushNamed(context, '/home');
        } else {
          errorMessage = loginResponse.message;
        }
      } else {
        errorMessage = 'Login failed: Invalid response from server';
      }
    } catch (e) {
      errorMessage = 'Login credentials are not correct';
    } finally {
      loading = false;
      notifyListeners();
    }
  }

  Future<void> loginByPhone(BuildContext context, String phone) async {
    loading = true;
    errorMessage = null;
    notifyListeners();

    try {
      final response = await _apiService.post(ApiConstants.loginByPhone, data: {
        'phone_number': phone,
      });

      if (response.statusCode == 200 && response.data != null) {
        final loginResponse = LoginByPhoneEntity.fromJson(response.data);
        if (loginResponse.status) {
          // Handle successful login
          print('Login Successful');
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => VerifyPhoneScreen(data: phone),
            ),
          );
        } else {
          errorMessage = loginResponse.message;
        }
      } else {
        errorMessage = 'Login failed: Invalid response from server';
      }
    } catch (e) {
      errorMessage = 'Login credentials are not correct';
    } finally {
      loading = false;
      notifyListeners();
    }
  }

  Future<void> verifyOtp(BuildContext context, String phone, String otp) async {
    loading = true;
    errorMessage = null;
    notifyListeners();

    try {
      final response = await _apiService.post(ApiConstants.verifyOtp,
          data: {'phone_number': phone, 'otp_code': otp});

      if (response.statusCode == 200 && response.data != null) {
        final loginResponse = LoginByPhoneEntity.fromJson(response.data);
        if (loginResponse.status) {
          // Handle successful login
          print('Login Successful');
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ),
          );
        } else {
          errorMessage = loginResponse.message;
        }
      } else {
        errorMessage = 'Login failed: Invalid response from server';
      }
    } catch (e) {
      errorMessage = 'Login credentials are not correct';
    } finally {
      loading = false;
      notifyListeners();
    }
  }

  Future<void> submitForm(BuildContext context,
      TextEditingController firstNameController,
      TextEditingController lastNameController,
      TextEditingController mobileController,
      TextEditingController emailController,
      TextEditingController cityController,
      String? stateController,
      String? gender,
      String? accountType,
      TextEditingController addressController,
      TextEditingController password,
      TextEditingController dob,
      TextEditingController postalCode,
      TextEditingController companyRegister,
      TextEditingController company,
      TextEditingController gstNo) async {
    if (firstNameController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter your first name')),
      );
      return;
    }

    if (lastNameController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter your last name')),
      );
      return;
    }

    if (mobileController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter your mobile number')),
      );
      return;
    }

    if (emailController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter your email')),
      );
      return;
    }

    if (cityController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter your city')),
      );
      return;
    }

    if (stateController == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select your state')),
      );
      return;
    }

    if (gender == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select your gender')),
      );
      return;
    }

    if (accountType == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select your entity')),
      );
      return;
    }

    if (addressController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter your address')),
      );
      return;
    }
    if (password.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter your address')),
      );
      return;
    }
    if (postalCode.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter your address')),
      );
      return;
    }
    if (accountType == "Individual") {
      if (dob.text.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please enter your dob')),
        );
        return;
      }
    } else {
      if (companyRegister.text.isEmpty ||
          gstNo.text.isEmpty ||
          company.text.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              content: Text('Please enter your Company Related Info')),
        );
        return;
      }
    }

    try {
      final response =
      await _apiService.post(ApiConstants.registerAssocPartner, data: {
        'email': emailController.text,
        'phone_number': mobileController.text,
        'first_name': firstNameController.text,
        'last_name': lastNameController.text,
        'state_id': stateController,
        'account_type': accountType,
        'gender_id': gender,
        'city': cityController.text,
        'address': addressController.text,
        'password': password.text,
        'zip_code': postalCode.text,
        'dob': dob.text,
        'company_registered': companyRegister.text,
        'company': company.text,
        'gst_no': gstNo.text,
        'step': 'contactInfo',
      });

      if (response.statusCode == 200 && response.data != null) {
        final registerAsPartnerResponse =
        RegisterAsPatnerEntity.fromJson(response.data);
        if (registerAsPartnerResponse.status) {
          // Handle successful registration
          print('Registration Successful');
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  AssociationPartnerRegistrationScreen2(
                      registrationData: registerAsPartnerResponse.data),
            ),
          );
        } else {
          errorMessage = registerAsPartnerResponse.message;
        }
      } else {
        errorMessage = 'Registration failed: Invalid response from server';
      }
    } catch (e) {
      errorMessage = 'Invalid response from server';
    } finally {
      loading = false;
      notifyListeners();
    }
  }

  Future<void> submitForm2(BuildContext context,
      TextEditingController aadhaarCardNo,
      TextEditingController panCard,
      TextEditingController bankName,
      TextEditingController accountNumber,
      TextEditingController bankIfsc,
      String? accountType,
      File? aadhaarCard,
      File? panCardFile,
      File? check,
      RegisterAsPartnerData data) async {
    if (accountType == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter your AccountType')),
      );
      return;
    }

    if (bankName.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter your BankName')),
      );
      return;
    }

    if (accountNumber.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter your AccountNumber')),
      );
      return;
    }

    if (bankIfsc.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter your Bank IFSC')),
      );
      return;
    }

    if (aadhaarCardNo.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter your Aadhaar')),
      );
      return;
    }

    if (panCard.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter your PanCard')),
      );
      return;
    }

    if (aadhaarCard?.path==null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select Aadhaar Card')),
      );
      return;
    }

    if (panCardFile?.path == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select Pan Card')),
      );
      return;
    }

    if (check?.path == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select Cancel Check')),
      );
      return;
    }

    try {
      final response =
      await _apiService.post(ApiConstants.registerAssocPartner, data: {
        'email': data.email,
        'phone_number': data.phoneNumber,
        'first_name': data.firstName,
        'last_name': data.lastName,
        'state_id': data.stateId,
        'account_type': data.accountType,
        'gender_id': data.genderId,
        'city': data.city,
        'address': data.address,
        'password': data.password,
        'zip_code': data.zipCode,
        'dob': data.dob,
        'company_registered': data.companyRegistered,
        'company': data.company,
        'gst_no': data.gstNo,
        'adhar_no': aadhaarCardNo.text,
        'adhar_card': await MultipartFile.fromFile(aadhaarCard!.path),
        'pan_card_no': panCard.text,
        'pan_card': await MultipartFile.fromFile(panCardFile!.path),
        'bank_acc_type': accountType,
        'bank_acc_no': accountNumber.text,
        'bank_name': bankName.text,
        'bank_ifsc_code': bankIfsc.text,
        'cancel_check': await MultipartFile.fromFile(check!.path),
        'step': 'accountInfo',
      });

      if (response.statusCode == 200 && response.data != null) {
        final registerAsPartnerResponse =
        RegisterAsPatnerEntity.fromJson(response.data);
        if (registerAsPartnerResponse.status) {
          // Handle successful registration
          print('Registration Successful');
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  VerifyAccountScreen(
                    registrationData: registerAsPartnerResponse.data, aadhaarCard: aadhaarCard, panCard: panCardFile, check: check,
                  ),
            )
          );
        } else {
          errorMessage = registerAsPartnerResponse.message;
        }
      } else {
        errorMessage = 'Registration failed: Invalid response from server';
      }
    } catch (e) {
      errorMessage = 'Invalid response from server';
    } finally {
      loading = false;
      notifyListeners();
    }
  }

  Future<void> verifyForm(BuildContext context,
      String? otp,
      File aadhaarCard,
      File panCardFile,
      File check,
      RegisterAsPartnerData data) async {
    if (otp == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please Enter Otp')),
      );
      return;
    }

    try {
      final response =
      await _apiService.post(ApiConstants.registerAssocPartner, data: {
        'email': data.email,
        'phone_number': data.phoneNumber,
        'first_name': data.firstName,
        'last_name': data.lastName,
        'state_id': data.stateId,
        'account_type': data.accountType,
        'gender_id': data.genderId,
        'city': data.city,
        'address': data.address,
        'password': data.password,
        'zip_code': data.zipCode,
        'dob': data.dob,
        'company_registered': data.companyRegistered,
        'company': data.company,
        'gst_no': data.gstNo,
        'adhar_no': data.adharNo,
        'pan_card_no': data.panCardNo,
        'bank_acc_type': data.bankAccType,
        'bank_acc_no': data.bankAccNo,
        'bank_name': data.bankName,
        'bank_ifsc_code': data.bankIfscCode,
        'otp_code': otp,
        'term_and_condition':1,
        'pan_card': await MultipartFile.fromFile(panCardFile.path),
        'adhar_card': await MultipartFile.fromFile(aadhaarCard.path),
        'cancel_check': await MultipartFile.fromFile(check.path),
        'step': 'Submit',
      });

      if (response.statusCode == 200 && response.data != null) {
        final registerAsPartnerResponse =
        RegisterAsPatnerEntity.fromJson(response.data);
        if (registerAsPartnerResponse.status) {
          // Handle successful registration

          Navigator.pushNamed(context, '/home');
        } else {
          errorMessage = registerAsPartnerResponse.message;
        }
      } else {
        errorMessage = 'Registration failed: Invalid response from server';
      }
    } catch (e) {
      errorMessage = 'Invalid response from server';
    } finally {
      loading = false;
      notifyListeners();
    }
  }
}


