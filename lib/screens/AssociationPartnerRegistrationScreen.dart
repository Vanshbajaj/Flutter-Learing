import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_app/comp/RaisedGradientButton.dart';
import 'package:test_app/viewmodel/login_viewmodel.dart';

class AssociationPartnerRegistrationScreen extends StatefulWidget {
  @override
  _AssociationPartnerRegistrationScreenState createState() =>
      _AssociationPartnerRegistrationScreenState();
}

class _AssociationPartnerRegistrationScreenState
    extends State<AssociationPartnerRegistrationScreen> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _postalCode = TextEditingController();
  final TextEditingController _passWord = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final FocusNode _dobFocusNode = FocusNode();
  final FocusNode _companyFocusNode = FocusNode();
  final TextEditingController company_registered = TextEditingController();
  final TextEditingController _company = TextEditingController();
  final TextEditingController _gst = TextEditingController();

  String? _selectedGender;
  String? _selectedEntity;
  String? _selectedState;

  final Map<String, String> _states = {
    "1": "Andaman and Nicobar Islands",
    "2": "Andhra Pradesh",
    "3": "Arunachal Pradesh",
    "4": "Assam",
    "5": "Bihar",
    "6": "Chandigarh",
    "7": "Chhattisgarh",
    "8": "Dadra and Nagar Haveli",
    "9": "Daman and Diu",
    "10": "Delhi",
    "11": "Goa",
    "12": "Gujarat",
    "13": "Haryana",
    "14": "Himachal Pradesh",
    "15": "Jammu and Kashmir",
    "16": "Jharkhand",
    "17": "Karnataka",
    "18": "Kenmore",
    "19": "Kerala",
    "20": "Lakshadweep",
    "21": "Madhya Pradesh",
    "22": "Maharashtra",
    "23": "Manipur",
    "24": "Meghalaya",
    "25": "Mizoram",
    "26": "Nagaland",
    "27": "Narora",
    "28": "Natwar",
    "29": "Odisha",
    "30": "Paschim Medinipur",
    "31": "Pondicherry",
    "32": "Punjab",
    "33": "Rajasthan",
    "34": "Sikkim",
    "35": "Tamil Nadu",
    "36": "Telangana",
    "37": "Tripura",
    "38": "Uttar Pradesh",
    "39": "Uttarakhand",
    "40": "Vaishali",
    "41": "West Bengal"
  };

  @override
  void initState() {
    super.initState();
    _dobFocusNode.addListener(() {
      if (_dobFocusNode.hasFocus) {
        _selectDate(context);
      }
    });
    _companyFocusNode.addListener(() {
      if (_companyFocusNode.hasFocus) {
        _selectDateCompany(context);
      }
    });
  }

  final Map<String, String> _gender = {"1": "Male", "2": "Female"};

  @override
  Widget build(BuildContext context) {
    final loginViewModel = Provider.of<LoginViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Association Partner Registration',
          style: GoogleFonts.urbanist(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF00009F),
          ),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              _buildTextField('First Name*', _firstNameController),
              _buildTextField('Last Name*', _lastNameController),
              _buildTextField('Mobile no*', _mobileController,
                  keyboardType: TextInputType.phone, maxLength: 10),
              _buildTextField('Email*', _emailController),
              _buildStateDropdownField('Select Gender', _gender, (value) {
                setState(() {
                  _selectedGender = value;
                });
              }),
              _buildDropdownField('Select Entity', ['Individual', 'Company'],
                  (value) {
                setState(() {
                  _selectedEntity = value;
                });
              }),
              _buildTextField('Select Your City', _cityController),
              _buildStateDropdownField('Select Your State', _states, (value) {
                setState(() {
                  _selectedState = value;
                });
              }),
              _buildTextField('Permanent Address*', _addressController,
                  maxLines: 2),
              _buildTextField('Password', _passWord, obscureText: true),
              _buildTextField('PostalCode', _postalCode, maxLength: 6),
              _conditionalTextField(),
              SizedBox(height: 20),
              if (loginViewModel.errorMessage != null)
                Text(
                  loginViewModel.errorMessage!,
                  style: TextStyle(color: Colors.red),
                ),
              Center(
                child: RaisedGradientButton(
                  child: Text(
                    'Next',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  gradient: LinearGradient(
                    colors: <Color>[Color(0xFF971616), Color(0xFFE0000D)],
                  ),
                  width: 200,
                  height: 50,
                  onPressed: () {
                    loginViewModel.submitForm(
                        context,
                        _firstNameController,
                        _lastNameController,
                        _mobileController,
                        _emailController,
                        _cityController,
                        _selectedState,
                        _selectedGender,
                        _selectedEntity,
                        _addressController,
                        _passWord,
                        _dobController,
                        _postalCode,
                        company_registered,
                        _company,
                        _gst);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String labelText, TextEditingController controller,
      {int maxLines = 1,
      FocusNode? focusNode,
      TextInputType keyboardType = TextInputType.text,
      bool obscureText = false,
      int? maxLength}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        keyboardType: keyboardType,
        obscureText: obscureText,
        maxLength: maxLength,
        decoration: InputDecoration(
          labelText: labelText,
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: Color(0xFFE4E4E4)),
          ),
        ),
        maxLines: maxLines,
        readOnly: focusNode !=
            null, // Make text field read-only if it has a focus node
      ),
    );
  }

  Widget _buildStateDropdownField(String labelText, Map<String, String> items,
      ValueChanged<String?> onChanged) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          labelText: labelText,
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: Color(0xFFE4E4E4)),
          ),
        ),
        items: items.entries.map((entry) {
          return DropdownMenuItem<String>(
            value: entry.key,
            child: Text(entry.value),
          );
        }).toList(),
        onChanged: onChanged,
      ),
    );
  }

  Widget _buildDropdownField(
      String labelText, List<String> items, ValueChanged<String?> onChanged) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          labelText: labelText,
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: Color(0xFFE4E4E4)),
          ),
        ),
        items: items.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: onChanged,
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      final currentDate = DateTime.now();
      final age = currentDate.year -
          picked.year -
          ((currentDate.month < picked.month ||
                  (currentDate.month == picked.month &&
                      currentDate.day < picked.day))
              ? 1
              : 0);

      if (age >= 18) {
        setState(() {
          _dobController.text = "${picked.toLocal()}".split(' ')[0];
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('You must be at least 18 years old.')),
        );
      }
    }
    _dobFocusNode.unfocus();
  }

  Future<void> _selectDateCompany(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      final currentDate = DateTime.now();
      final age = currentDate.year -
          picked.year -
          ((currentDate.month < picked.month ||
                  (currentDate.month == picked.month &&
                      currentDate.day < picked.day))
              ? 1
              : 0);

      if (age >= 1) {
        setState(() {
          company_registered.text = "${picked.toLocal()}".split(' ')[0];
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('The Date cannot be in the future.')),
        );
      }
    }
    _companyFocusNode.unfocus();
  }

  Widget _conditionalTextField() {
    if (_selectedEntity == "Individual") {
      return _buildTextField('Date of Birth*', _dobController,
          focusNode: _dobFocusNode);
    } else {
      return Column(
        children: [
          _buildTextField('Company*', _company),
          _buildTextField('Gst*', _gst),
          _buildTextField('Company Registered*', company_registered,
              focusNode: _companyFocusNode)
        ],
      );
    }
  }
}
