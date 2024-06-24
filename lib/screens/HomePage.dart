import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../comp/CustomToggleButton.dart';
import '../comp/RaisedGradientButton.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/mudrahomelogo.png', height: 40),
            // Add your logo asset
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BannerSection(),
            SizedBox(height: 10),
            LoanServicesSection(),
            SizedBox(height: 20),
            ForItProsSection(),
            SizedBox(height: 20),
            OurChoiceSection(),
            SizedBox(height: 20),
            FooterSection(),
          ],
        ),
      ),
    ));
  }
}

class BannerSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                    'https://mudrahome.com/assets/frontend/img/top-banner-img.png',
                    height: 200), // Add your banner image asset
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LoanServicesSection extends StatelessWidget {
  final List<Map<String, dynamic>> services = [
    {
      'image':
          ('https://mudrahome.com/storage/uploads/media/2024/06/media_1717220139.png'),
      'label': 'Home Loan'
    },
    {
      'image':
          ('https://mudrahome.com/storage/uploads/media/2024/06/media_1717219935.png'),
      'label': 'Loan Balance Transfer'
    },
    {
      'image':
          ('https://mudrahome.com/storage/uploads/media/2024/06/media_1717219420.png'),
      'label': 'Loan Against Property'
    },
    {
      'image':
          ('https://mudrahome.com/storage/uploads/media/2024/06/media_1717220057.png'),
      'label': 'Personal Loan'
    },
    {
      'image':
          ('https://mudrahome.com/storage/uploads/media/2024/06/media_1717219455.png'),
      'label': 'Business Loan'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            Text('Loan Services',
                style: GoogleFonts.urbanist(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF00009F))),
            Expanded(
                child: Divider(
              indent: 5,
              endIndent: 120,
              color: Color(0xFF00009F),
            )),
          ]),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: services.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Image.network(
                    services[index]['image'],
                    height: 60,
                  ),
                  SizedBox(height: 10),
                  Text(
                    services[index]['label'],
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

class ForItProsSection extends StatefulWidget {
  @override
  _ForItProsSectionState createState() => _ForItProsSectionState();
}

class _ForItProsSectionState extends State<ForItProsSection> {
  bool isCustomerSelected = true;

  final List<Map<String, dynamic>> services = [
    {
      'image': ('https://mudrahome.com/assets/frontend/img/enrollment.png'),
      'label': 'Sign up & Apply',
      'desc': 'Sign-up and here your loan requirement with mudrahome.com'
    },
    {
      'image': ('https://mudrahome.com/assets/frontend/img/testing.png'),
      'label': 'Compare Loan Offers',
      'desc':
          'Get customized offers from our proprietary technology base loan platform.'
    },
    {
      'image': ('https://mudrahome.com/assets/frontend/img/offer.png'),
      'label': 'Select Best Offer',
      'desc':
          'Compare & apply the best offer from multiple banks and NBFC that suits your personal finance.'
    },
    {
      'image': ('https://mudrahome.com/assets/frontend/img/relax.png'),
      'label': 'Relax & Sit Back',
      'desc':
          '"Sit back and relax as we work on getting your loan requirements processed at the earliest'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Column(
            children: [
              Row(
                children: [
                  Text('HOW IT WORKS',
                      style: GoogleFonts.urbanist(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF00009F))),
                  Expanded(
                      child: Divider(
                    indent: 5,
                    endIndent: 100,
                    color: Color(0xFF00009F),
                  )),
                ],
              ),
              Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  color: Colors.black,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomToggleButton(
                        text: 'FOR CUSTOMERS',
                        isSelected: isCustomerSelected,
                        onTap: () {
                          setState(() {
                            isCustomerSelected = true;
                          });
                        },
                      ),
                      CustomToggleButton(
                        text: 'FOR CHANNEL PARTNERS',
                        isSelected: !isCustomerSelected,
                        onTap: () {
                          setState(() {
                            isCustomerSelected = false;
                          });
                        },
                      ),
                    ],
                  )),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.2,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1,
                ),
                itemCount: services.length,
                itemBuilder: (context, index) {
                  return Container(
                      width: 200,
                      height: 200,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        elevation: 4,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.network(
                                services[index]['image'],
                                height: 50,
                              ),
                              Text(
                                services[index]['label'],
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                services[index]['desc'],
                                textAlign: TextAlign.center,
                                style: GoogleFonts.urbanist(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                      ));
                },
              ),
            ],
          ),
        ]));
  }
}

class OurChoiceSection extends StatelessWidget {
  final List<Map<String, dynamic>> choices = [
    {
      'icon':'https://mudrahome.com/assets/frontend/img/vast-choice.png',
      'title': 'VAST CHOICE',
      'description':
          'We have partnership with almost all banks and NBFCs, You can choose from a complete bouquet of financial products offered by them.\t'
    },
    {
      'icon': 'https://mudrahome.com/assets/frontend/img/easy&fast.png',
      'title': 'EASY & FAST ACCESS TO FINANCE"',
      'description':
          'Our loan algorithm provides you multiple loan offers, easy comparison & impartial financial advice.'
    },
    {
      'icon': 'https://mudrahome.com/assets/frontend/img/safe&secure.png',
      'title': 'DATA PRIVACY',
      'description': 'You data is completely safe with us and we implement best market data security practices to keep your data secure.'
    },
    {
      'icon': 'https://mudrahome.com/assets/frontend/img/everyone.png',
      'title': 'FINANCE FOR EVERYONE',
      'description':
          'We are a team of dedicated financial professionals who work towards making financial products easily accessible to everyone.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Check You Maximun Loan Eligibilty',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          Card(
            elevation: 4,
            color: Color(0xFFE0000D),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              child: Text(
                'Check Now',
                style: GoogleFonts.urbanist(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Row(
            children: [
              Text('WHY CHOOSE MUDRAHOME?',
                  style: GoogleFonts.urbanist(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF00009F))),
              Expanded(
                  child: Divider(
                    indent: 5,
                    endIndent: 100,
                    color: Color(0xFF00009F),
                  )),
            ],
          ),
          Text('We make personal finance convenient, transparent and very simple',
              style: GoogleFonts.urbanist(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.black)),
          ...choices.map((choice) {
            return Card(
              color: Colors.white,
              child: ListTile(
                leading: Image.network(choice['icon']),
                title: Text(choice['title'],style: GoogleFonts.urbanist(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),),
                subtitle: Text(choice['description'],style: GoogleFonts.urbanist(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),),
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}

class FooterSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
         Image.network('https://mudrahome.com/assets/frontend/img/app-banner/bottom-banner-img.png'),
          Text(
            'All © Copyright Mudra Home Inc. All Rights Reserved.',
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
        ],
      ),
    );
  }
}

// class ForItProsSection extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 10),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               Text('HOW IT WORKS', style:  GoogleFonts.urbanist(fontSize: 14, fontWeight: FontWeight.bold,color:Color(0xFF00009F))),
//               Expanded(child: Divider(indent: 5,endIndent: 100,
//                 color: Color(0xFF00009F),
//               ) ),
//             ],),
//
//
//
//           SizedBox(height: 10),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               ElevatedButton(
//                 onPressed: () {},
//                 child: Text('Our Solutions'),
//                 style: ElevatedButton.styleFrom(foregroundColor: Colors.red),
//               ),
//               ElevatedButton(
//                 onPressed: () {},
//                 child: Text('Our Channel Partners'),
//                 style: ElevatedButton.styleFrom(foregroundColor: Colors.grey),
//               ),
//             ],
//           ),
//           SizedBox(height: 10),
//           Card(
//             child: ListTile(
//               leading: Icon(Icons.check_circle, color: Colors.green),
//               title: Text('Check Your Eligibility'),
//             ),
//           ),
//           Card(
//             child: ListTile(
//               leading: Icon(Icons.compare_arrows, color: Colors.orange),
//               title: Text('Compare Loan Offers'),
//             ),
//           ),
//           Card(
//             child: ListTile(
//               leading: Icon(Icons.gavel, color: Colors.blue),
//               title: Text('Select Best Offer'),
//             ),
//           ),
//           Card(
//             child: ListTile(
//               leading: Icon(Icons.backup, color: Colors.purple),
//               title: Text('Relax & Get Back to Work'),
//             ),
//           ),
//           SizedBox(height: 10),
//           ElevatedButton(
//             onPressed: () {},
//             child: Text('Reach Us!'),
//           ),
//         ],
//       ),
//     );
//   }
// }
