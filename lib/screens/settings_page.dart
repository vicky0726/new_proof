import 'package:flutter/material.dart';
import 'package:proof_app/common/common.dart';
import 'package:proof_app/home_page.dart';
import 'package:proof_app/screens/about_screen.dart';
import 'package:proof_app/screens/change_password.dart';
import 'package:proof_app/screens/edit_profile.dart';
import 'package:proof_app/screens/friend_request.dart';
import 'package:proof_app/screens/login_screen.dart';
import 'package:proof_app/screens/other_documents.dart';
import 'package:proof_app/screens/privacy_policy.dart';
import 'package:proof_app/screens/proof_main.dart';
import 'package:proof_app/screens/signup_screen.dart';
import 'package:proof_app/screens/subscription_screen.dart';
import 'package:proof_app/screens/terms_screen.dart';
import 'package:proof_app/widgets/custom_elevated_button.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  Widget contentBox(context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    SizedBox(height: Common.displayHeight(context) * 0.014),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //   children: [
                          //     SizedBox(
                          //         width: Common.displayWidth(context) * 0.001),
                          //     GestureDetector(
                          //       onTap: () {
                          //         Navigator.of(context).pop();
                          //       },
                          //       child: Image(
                          //         image: AssetImage('assets/images/close.png'),
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          SizedBox(
                              height: Common.displayHeight(context) * 0.02),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              'Are Your Sure you want to Logout',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                              height: Common.displayHeight(context) * 0.03),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: Common.displayWidth(context) * 0.3,
                                child: ElevatedButton(
                                  child: Text(
                                    'Cancel',
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 172, 155, 1)),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.white),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: Common.displayWidth(context) * 0.3,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pushAndRemoveUntil(
                                        MaterialPageRoute(
                                            builder: (context) => HomePage()),
                                        (Route<dynamic> route) => false);
                                  },
                                  child: Text('CONFIRM'),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color.fromRGBO(0, 172, 155, 1)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                              height: Common.displayHeight(context) * 0.014),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget contentBox2(context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    SizedBox(height: Common.displayHeight(context) * 0.014),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //   children: [
                          //     SizedBox(
                          //         width: Common.displayWidth(context) * 0.001),
                          //     GestureDetector(
                          //       onTap: () {
                          //         Navigator.of(context).pop();
                          //       },
                          //       child: Image(
                          //         image: AssetImage('assets/images/close.png'),
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          SizedBox(
                              height: Common.displayHeight(context) * 0.02),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              'Are Your Sure you want to Delete Your Account',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                              height: Common.displayHeight(context) * 0.03),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: Common.displayWidth(context) * 0.3,
                                child: ElevatedButton(
                                  child: Text(
                                    'Cancel',
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 172, 155, 1)),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.white),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: Common.displayWidth(context) * 0.3,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pushAndRemoveUntil(
                                        MaterialPageRoute(
                                            builder: (context) => HomePage()),
                                        (Route<dynamic> route) => false);
                                  },
                                  child: Text('CONFIRM'),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color.fromRGBO(0, 172, 155, 1)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                              height: Common.displayHeight(context) * 0.014),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
              // Navigator.of(context).pushAndRemoveUntil(
              //     MaterialPageRoute(builder: (_) => ProofMain(title: '')),
              //     (route) => false);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          title: Text(
            'SETTINGS',
            style:
                TextStyle(fontSize: 24, color: Color.fromRGBO(0, 172, 155, 1)),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
              left: _mediaQuery.size.width * 0.01,
              right: _mediaQuery.size.width * 0.01,
              top: _mediaQuery.size.height * 0.01,
              // bottom: _mediaQuery.size.height * 0.1
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => EditProfile()));
                    },
                    leading: Text(
                      'Edit Profile',
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1), fontSize: 21),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => FriendRequest()));
                    },
                    leading: Text(
                      'Friends',
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1), fontSize: 21),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ChangePassword()));
                    },
                    leading: Text(
                      'Change Password',
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1), fontSize: 21),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SubscriptionScreen()));
                    },
                    leading: Text(
                      'Subscription',
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1), fontSize: 21),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => AboutScreen()));
                    },
                    leading: Text(
                      'About Us',
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1), fontSize: 21),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PrivacyPolicy()));
                    },
                    leading: Text(
                      'Privacy Policy',
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1), fontSize: 21),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TermsScreen()));
                    },
                    leading: Text(
                      'Terms & Conditions',
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1), fontSize: 21),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      height: 60,
                      width: 350,
                      child: SizedBox(
                        child: CustomElevatedButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return Dialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  elevation: 0,
                                  //backgroundColor: Colors.black,
                                  child: contentBox(context),
                                );
                              },
                            );
                          },
                          text: 'Logout',
                        ),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    title: Center(
                        child: Text(
                      'Delete Account',
                      style: TextStyle(
                          fontSize: 16, color: Color.fromRGBO(0, 172, 155, 1)),
                    )),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            elevation: 0,
                            //backgroundColor: Colors.black,
                            child: contentBox2(context),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
