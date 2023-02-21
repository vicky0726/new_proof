import 'package:flutter/material.dart';
import 'package:proof_app/common/common.dart';
import 'package:proof_app/screens/activity_name.dart';
import 'package:proof_app/screens/notification_screen.dart';
import 'package:proof_app/screens/settings_page.dart';
import 'package:proof_app/screens/std_results.dart';
import 'package:proof_app/screens/upload_report.dart';

class PersonView extends StatefulWidget {
  const PersonView({Key? key}) : super(key: key);

  @override
  State<PersonView> createState() => _PersonViewState();
}

class _PersonViewState extends State<PersonView> {
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Image(image: AssetImage('assets/MaskGroup.png')),
        automaticallyImplyLeading: false,
        elevation: 5,
        backgroundColor: Colors.white,
        toolbarHeight: _mediaQuery.size.height / 10,
        actions: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Image(image: AssetImage('assets/MaskGroup.png')),
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => NotificationScreen()));
                  },
                  child: SizedBox(
                      height: 30,
                      child: Icon(
                        Icons.notifications_none,
                        color: Color.fromRGBO(152, 152, 152, 1),
                        size: 33,
                      ))),
              SizedBox(
                width: Common.displayWidth(context) * 0.04,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SettingsPage()));
                  // Navigator.of(context).pushAndRemoveUntil(
                  //     MaterialPageRoute(builder: (_) => SettingsPage()),
                  //     (route) => false);
                },
                child: Icon(Icons.settings_sharp,size: 30,color: Color.fromRGBO(152, 152, 152, 1),),
              ),
              SizedBox(
                width: Common.displayWidth(context) * 0.040,
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 260,
              width: double.infinity,
              color: Color.fromRGBO(81, 210, 177, 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  CircleAvatar(
                    radius: 40.0,
                    backgroundColor: Colors.transparent,
                    child: CircleAvatar(
                      radius: 40.0,
                      backgroundImage: AssetImage('assets/Avatar.png'),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(top: 16.0),
                      child: Text(
                        'Profile Name',
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 21.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: Container(
                      child: Text(
                          style: TextStyle(
                              fontSize: 13,
                              color: Color.fromRGBO(255, 255, 255, 1)),
                          textAlign: TextAlign.center,
                          softWrap: true,
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna\n aliqua. Bibendum est ultricies integer quis. Iaculis urna id volutpat lacus'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                child: Text(
                  'MY PROOF',
                  style: TextStyle(
                      fontSize: 16, color: Color.fromRGBO(81, 210, 177, 1)),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              width: _mediaQuery.size.height * 1,
              height: 100,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => StdResult()));
                },
                child: Card(
                  elevation: 4.0,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 118),
                    child: Row(
                      children: [
                        CircleAvatar(
                          foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                          radius: 8,
                          backgroundColor: Color.fromRGBO(220, 223, 50, 1),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Color.fromRGBO(243, 223, 50, 1),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          radius: 9,
                          backgroundColor: Color.fromRGBO(243, 223, 50, 1),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'STD',
                          style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.normal,
                              color: Color.fromRGBO(0, 0, 0, 1)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: _mediaQuery.size.height * 1,
              height: 100,
              child: Card(
                elevation: 4.0,
                child: Padding(
                  padding: const EdgeInsets.only(left: 90),
                  child: Row(
                    children: [
                      CircleAvatar(
                          foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                          radius: 8,
                          backgroundColor: Color.fromRGBO(8, 174, 158, 1)),
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                          radius: 8,
                          backgroundColor: Color.fromRGBO(8, 174, 158, 1)),
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        radius: 9,
                        backgroundColor: Color.fromRGBO(8, 174, 158, 1),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'COVID VACCINE',
                        style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.normal,
                            color: Color.fromRGBO(0, 0, 0, 1)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: _mediaQuery.size.height * 1,
              height: 100,
              child: Card(
                elevation: 4.0,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Text(
                        'Search for STD Testing Center',
                        style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.normal,
                            color: Color.fromRGBO(0, 0, 0, 1)),
                      ),
                      SizedBox(
                        width: Common.displayWidth(context) * 0.05,
                      ),
                      Image(image: AssetImage('assets/Round.png'))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
