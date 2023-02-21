import 'package:flutter/material.dart';
import 'package:proof_app/common/common.dart';
import 'package:proof_app/screens/activity_name.dart';
import 'package:proof_app/screens/find_friends.dart';
import 'package:proof_app/screens/otp_verification.dart';
import 'package:proof_app/screens/reset_password.dart';
import 'package:proof_app/widgets/custom_elevated_button.dart';

class CreateProfile extends StatefulWidget {
  const CreateProfile({Key? key}) : super(key: key);

  @override
  State<CreateProfile> createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      // bottomNavigationBar:  Container(
      //     height: 75,
      //     width: double.infinity,
      //     padding: EdgeInsets.only(bottom: 12, left: 10, right: 10),
      //     child: CustomElevatedButton(onPressed: () {
      //       Navigator.of(context).push(
      //           MaterialPageRoute(builder: (context) => FindFriends()));
      //     }, text: 'CONTINUE')
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Create Profile',
                  style: TextStyle(
                      color: Color.fromRGBO(0, 172, 155, 1),
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: Common.displayHeight(context) * 0.01,
                ),
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    SizedBox(
                        height: 120,
                        child: Image(image: AssetImage('assets/person.png'))),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 45, bottom: 10, right: 7),
                      child: Image.asset(
                        "assets/pluscircle.png",
                        scale: 1.5,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Upload Profile Pic',
                  style: TextStyle(
                      fontSize: 18, color: Color.fromRGBO(153, 153, 153, 1)),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, bottom: 25),
                  child: TextFormField(
                   maxLength: 30,
                    validator: (val) {},

                    cursorHeight: 20,
                    autofocus: false,
                    onTap: () {},
                    style: TextStyle(color: Colors.black),
// controller: Controller,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Color.fromRGBO(229, 229, 229, 1))
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color.fromRGBO(229, 229, 229, 1))
                      ),
                      fillColor: Color.fromRGBO(229, 229, 229, 1),
                      filled: true,
                      hintText: 'Your Name',
                      counterText: '',
                      prefixStyle: const TextStyle(color: Colors.white),

                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 22, horizontal: 10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, bottom: 25),
                  child: TextFormField(
                    maxLines: 7,
                    maxLength: 100,
                    // controller: passwordController,
                    // obscureText: hidden2,
                    validator: (val) {},

                    cursorHeight: 20,
                    autofocus: false,
                    onTap: () {},
                    style: TextStyle(color: Colors.black),
// controller: Controller,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Color.fromRGBO(229, 229, 229, 1))
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color.fromRGBO(229, 229, 229, 1))
                      ),
                      fillColor: Color.fromRGBO(229, 229, 229, 1),
                      filled: true,
                      hintText: 'Bio',
                      counterText: '',
                      // prefixIcon: Image(image: AssetImage('assets/padlock.png')),

// suffixIcon: Container(
//     height: 10, width: 10, child: InkWell(onTap: () {})),
                      prefixStyle: const TextStyle(color: Colors.white),

                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 22, horizontal: 10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Common.displayHeight(context) * 0.010,
                ),
                CustomElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => FindFriends()));
                    },
                    text: 'CONTINUE'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
