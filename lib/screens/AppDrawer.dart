import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Hello."),
            accountEmail: Text("+91 7689998917"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/profile_image.png"), // Replace with your image asset
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.pop(context);
              // Navigate to home screen if needed
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('My Account'),
            onTap: () {
              Navigator.pop(context);
              // Navigate to my account screen
            },
          ),
          ExpansionTile(
            leading: Icon(Icons.account_balance),
            title: Text('Loan Products'),
            children: <Widget>[
              ListTile(
                title: Text('Home Loan'),
                onTap: () {
                  Navigator.pop(context);
                  // Navigate to home loan screen
                },
              ),
              ListTile(
                title: Text('Loan Balance Transfer'),
                onTap: () {
                  Navigator.pop(context);
                  // Navigate to loan balance transfer screen
                },
              ),
              ListTile(
                title: Text('Loan Against Property'),
                onTap: () {
                  Navigator.pop(context);
                  // Navigate to loan against property screen
                },
              ),
              ListTile(
                title: Text('Personal Loan'),
                onTap: () {
                  Navigator.pop(context);
                  // Navigate to personal loan screen
                },
              ),
              ListTile(
                title: Text('Business Loan'),
                onTap: () {
                  Navigator.pop(context);
                  // Navigate to business loan screen
                },
              ),
            ],
          ),
          ListTile(
            leading: Icon(Icons.calculate),
            title: Text('EMI Calculator'),
            onTap: () {
              Navigator.pop(context);
              // Navigate to EMI calculator screen
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About Us'),
            onTap: () {
              Navigator.pop(context);
              // Navigate to about us screen
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_mail),
            title: Text('Contact Us'),
            onTap: () {
              Navigator.pop(context);
              // Navigate to contact us screen
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Log Out'),
            onTap: () {
              Navigator.pop(context);
              // Handle log out
            },
          ),
        ],
      ),
    );
  }
}
