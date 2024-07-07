import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:test_app/network/models/register_as_patner_entity.dart';
import 'package:provider/provider.dart';

import '../comp/RaisedGradientButton.dart';
import '../viewmodel/login_viewmodel.dart';

class AssociationPartnerRegistrationScreen2 extends StatefulWidget {
  final RegisterAsPartnerData registrationData;

  AssociationPartnerRegistrationScreen2({required this.registrationData});

  @override
  _AssociationPartnerRegistrationScreenState2 createState() =>
      _AssociationPartnerRegistrationScreenState2();
}

class _AssociationPartnerRegistrationScreenState2
    extends State<AssociationPartnerRegistrationScreen2> {
  final TextEditingController _bankNameController = TextEditingController();
  final TextEditingController _accountNumberController =
      TextEditingController();
  final TextEditingController _ifscController = TextEditingController();
  final TextEditingController _aadharController = TextEditingController();
  final TextEditingController _panController = TextEditingController();
  String? _selectedAccountType;
  final Map<String, String> _accountTypes = {
    "1": "Savings Account",
    "2": "Current Account",
  };
  File? aadhaarCard;
  File? panCard;
  File? check;
  final picker = ImagePicker();

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
              // Text(widget.registrationData.step.toString()),
              _buildDropdownField('Select Account Type', _accountTypes,
                  (value) {
                setState(() {
                  _selectedAccountType = value;
                });
              }),
              _buildTextField('Bank Name*', _bankNameController),
              _buildTextField('Account No*', _accountNumberController),
              _buildTextField('IFSC Code*', _ifscController),
              _buildTextField('Aadhaar No*', _aadharController),
              _buildTextField('Pan No*', _panController),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                child: const Text('Select Image from Gallery and Camera'),
                onPressed: () {
                  _showPicker(context: context);
                },
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                child: const Text('Select Image from Gallery and Camera'),
                onPressed: () {
                  _showPickerPan(context: context);
                },
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                child: const Text('Select Image from Gallery and Camera'),
                onPressed: () {
                  _showPickerCheck(context: context);
                },
              ),
              SizedBox(height: 20),

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
                    loginViewModel.submitForm2(
                        context,
                        _aadharController,
                        _panController,
                        _bankNameController,
                        _accountNumberController,
                        _ifscController,
                        _selectedAccountType,
                        aadhaarCard,
                        panCard,
                        check,
                        widget.registrationData);
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

  Widget _buildDropdownField(String labelText, Map<String, String> items,
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

  void _showPicker({
    required BuildContext context,
  }) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Photo Library'),
                onTap: () {
                  getImage(ImageSource.gallery);
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_camera),
                title: const Text('Camera'),
                onTap: () {
                  getImage(ImageSource.camera);
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _showPickerPan({
    required BuildContext context,
  }) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Photo Library'),
                onTap: () {
                  getImagePan(ImageSource.gallery);
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_camera),
                title: const Text('Camera'),
                onTap: () {
                  getImagePan(ImageSource.camera);
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _showPickerCheck({
    required BuildContext context,
  }) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Photo Library'),
                onTap: () {
                  getImageCheck(ImageSource.gallery);
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_camera),
                title: const Text('Camera'),
                onTap: () {
                  getImageCheck(ImageSource.camera);
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future getImage(ImageSource img) async {
    final pickedFile = await picker.pickImage(source: img);
    XFile? xfilePick = pickedFile;
    setState(
      () {
        if (xfilePick != null) {
          aadhaarCard = File(pickedFile!.path);
          print(aadhaarCard);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(// is this context <<<
              const SnackBar(content: Text('Nothing is selected')));
        }
      },
    );
  }

  Future getImagePan(ImageSource img) async {
    final pickedFile = await picker.pickImage(source: img);
    XFile? xfilePick = pickedFile;
    setState(
      () {
        if (xfilePick != null) {
          panCard = File(pickedFile!.path);
          print(panCard);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(// is this context <<<
              const SnackBar(content: Text('Nothing is selected')));
        }
      },
    );
  }

  Future getImageCheck(ImageSource img) async {
    final pickedFile = await picker.pickImage(source: img);
    XFile? xfilePick = pickedFile;
    setState(
      () {
        if (xfilePick != null) {
          check = File(pickedFile!.path);
          print(check);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(// is this context <<<
              const SnackBar(content: Text('Nothing is selected')));
        }
      },
    );
  }
}
