import 'package:flutter/material.dart';

class HomeLoanApplication extends StatefulWidget {
  @override
  _HomeLoanApplicationState createState() => _HomeLoanApplicationState();
}

class _HomeLoanApplicationState extends State<HomeLoanApplication> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apply for Home Loan with Quick Disbursal'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            if (_currentStep > 0) {
              setState(() {
                _currentStep--;
              });
            }
          },
        ),
      ),
      body: Stepper(
        currentStep: _currentStep,
        onStepTapped: (step) {
          setState(() {
            _currentStep = step;
          });
        },
        onStepContinue: () {
          if (_currentStep < 3) {
            setState(() {
              _currentStep++;
            });
          }
        },
        onStepCancel: () {
          if (_currentStep > 0) {
            setState(() {
              _currentStep--;
            });
          }
        },
        steps: [
          Step(
            title: Text('Employment Details'),
            content: Column(
              children: [
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(labelText: 'Employment Type'),
                  items: ['Salaried', 'Self-Employed']
                      .map((label) => DropdownMenuItem(
                            child: Text(label),
                            value: label,
                          ))
                      .toList(),
                  onChanged: (value) {},
                ),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(labelText: 'Gender'),
                  items: ['Male', 'Female']
                      .map((label) => DropdownMenuItem(
                            child: Text(label),
                            value: label,
                          ))
                      .toList(),
                  onChanged: (value) {},
                ),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(labelText: 'Property Type'),
                  items: ['Residential', 'Commercial']
                      .map((label) => DropdownMenuItem(
                            child: Text(label),
                            value: label,
                          ))
                      .toList(),
                  onChanged: (value) {},
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Sentenced Map',
                    hintText: '05-04-2005',
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Co-Applicant',
                  ),
                ),
                SizedBox(height: 20),
                Text('20,000', style: TextStyle(fontSize: 24)),
              ],
            ),
          ),
          Step(
            title: Text('Financial Details'),
            content: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'PROPERTY MARKET VALUE IN INR',
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'AGREEMENT VALUE IN INR',
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'ANNUAL SALARY INCOME',
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'ANNUAL RENTAL INCOME IN INR - IF ANY',
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText:
                        'TOTAL EMIS YOU CURRENTLY PAY PER MONTH IN INR - IF ANY',
                  ),
                ),
              ],
            ),
          ),
          Step(
            title: Text('Financial Details'),
            content: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'CO-APPLICANT ANNUAL GROSS INCOME IN INR',
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'CO-APPLICANT MONTHLY EMI IN INR - IF ANY',
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: '2nd CO-APPLICANT ANNUAL GROSS INCOME IN INR',
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'CO-APPLICANT MONTHLY EMI IN INR - IF ANY',
                  ),
                ),
              ],
            ),
          ),
          Step(
            title: Text('Contact Detail'),
            content: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'First Name',
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Last Name',
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Mobile Number to get OTP',
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Current City',
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Property City',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
