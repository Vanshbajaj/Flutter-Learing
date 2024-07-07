import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactUsScreen extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _loanAmountController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _specificMessageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Contact Your Requirements!',
                        style: GoogleFonts.urbanist(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'MH Mortgage Services Private Limited',
                        style: GoogleFonts.urbanist(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'IA 13 B Ashok Vihar Phase I New Delhi 110052',
                        style: GoogleFonts.urbanist(fontSize: 14, color: Colors.black),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(Icons.phone, size: 16),
                          SizedBox(width: 5),
                          Text(
                            '+91 9828011190',
                            style: GoogleFonts.urbanist(fontSize: 14, color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(Icons.email, size: 16),
                          SizedBox(width: 5),
                          Text(
                            'info@mudrahome.com',
                            style: GoogleFonts.urbanist(fontSize: 14, color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            icon: Icon(Icons.facebook),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.facebook),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.facebook),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.facebook),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.youtube_searched_for),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Contact Us',
                style: GoogleFonts.urbanist(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              _buildTextField('Full Name', _nameController),
              _buildTextField('Your Email*', _emailController),
              _buildTextField('Phone Number*', _phoneController),
              _buildDropdownField('Select Occupation', ['Occupation 1', 'Occupation 2']),
              _buildTextField('Loan Amount', _loanAmountController),
              _buildDropdownField('Select Loan Type', ['Loan Type 1', 'Loan Type 2']),
              _buildTextField('Your City', _cityController),
              _buildTextField('Anything Specific You want to say...', _specificMessageController, maxLines: 3),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Handle the next button press
                  },
                  child: Text('Next', style: GoogleFonts.urbanist(fontSize: 16)),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.red,
                    padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String labelText, TextEditingController controller, {int maxLines = 1}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: Color(0xFFE4E4E4)),
          ),
        ),
        maxLines: maxLines,
      ),
    );
  }

  Widget _buildDropdownField(String labelText, List<String> items) {
    String? selectedValue;
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
        onChanged: (newValue) {
          selectedValue = newValue;
        },
      ),
    );
  }
}


