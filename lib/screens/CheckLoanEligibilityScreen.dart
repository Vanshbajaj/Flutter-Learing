import 'package:flutter/material.dart';

class CheckLoanEligibilityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check Loan Eligibility'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Apply for Loan with Quick Disbursal',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Check your eligibility in just 1 minute! MudraHome customers can check their loan eligibility. Enjoy competitive interest rates, benefit from a flexible tenure with minimal documentation and quick approvals.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              children: [
                LoanOption(icon: Icons.home, label: 'Home Loan'),
                LoanOption(icon: Icons.account_balance_wallet, label: 'Loan Balance Transfer'),
                LoanOption(icon: Icons.person, label: 'Personal Loan'),
                LoanOption(icon: Icons.business, label: 'Business Loan'),
               // LoanOption(icon: Icons.property, label: 'Loan Against Property'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class LoanOption extends StatelessWidget {
  final IconData icon;
  final String label;

  LoanOption({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 50),
        SizedBox(height: 8),
        Text(label, textAlign: TextAlign.center),
      ],
    );
  }
}