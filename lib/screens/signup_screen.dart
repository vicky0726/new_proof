import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:proof_app/common/common.dart';
import 'package:proof_app/screens/otp_verification.dart';
import 'package:proof_app/utils/validator.dart';
import 'package:proof_app/widgets/custom_elevated_button.dart';

enum SingingCharacter { lafayette, jefferson }

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  SingingCharacter? _character = SingingCharacter.lafayette;

  TextEditingController repasswordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _passVisibility = true;
  bool _passVisibility1 = true;

  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        padding: EdgeInsets.only(
          left: Common.displayWidth(context) * 0.01,
          right: _mediaQuery.size.width * 0.01,
          // top: _mediaQuery.size.height * 0.02,
          // bottom: _mediaQuery.size.height * 0.1
        ),
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, bottom: 20, top: 20),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    validator: (input) {
                      if (input!.isEmpty) {
                        return 'Please enter a Email address';
                      } else if(!Validator.isValidEmail(input)) {
                        return 'Please enter a valid Email address';
                      }
                      return null;
                    },
                    controller: emailController,
                    textInputAction: TextInputAction.next,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                          RegExp(r'[a-zA-Z0-9@.]'))
                    ],
                    cursorHeight: 20,
                    autofocus: false,
                    onTap: () {},maxLength: 30,
                    style: TextStyle(color: Colors.black),
// controller: Controller,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(229, 229, 229, 1))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(229, 229, 229, 1))),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(229, 229, 229, 1))
                      ), focusedErrorBorder: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Color.fromRGBO(229, 229, 229, 1), width: 0.0),
                    ),
                      fillColor: Color.fromRGBO(229, 229, 229, 1),
                      filled: true,
                      counterText: '',
                      hintText: 'Email',
                      prefixIcon: Icon(Icons.email_outlined,color: Colors.grey,),
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
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, bottom: 20),
                  child: TextFormField(
                    controller: passwordController,
                    textInputAction: TextInputAction.next,
                    obscureText: _passVisibility,
                    keyboardType: TextInputType.visiblePassword,
                    maxLength: 12,cursorColor: Colors.black,
                    // obscureText: hidden2,
                    validator: (input) {
                      if (input!.isEmpty) {
                        return 'please type Password';
                      } else if (input.length < 6) {
                        return 'please provide minimum 6 charters';
                      } else if(input.length > 15 ) {
                        return 'Password can not be greater than 15 characters';
                      }
                      // else if(Validator.isValidPassword(input)) {
                      //   return 'Please should contain Capital & Small Characters, Special Symbol & Digits';
                      // }
                      return null;
                    },
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                          RegExp(r"[a-zA-Z0-9!@#$%^&*.]")),
                    ],
                    cursorHeight: 20,
                    autofocus: false,
                    onTap: () {},
                    style: TextStyle(color: Colors.black),
// controller: Controller,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(229, 229, 229, 1))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(229, 229, 229, 1))),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(229, 229, 229, 1))
                      ), focusedErrorBorder: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Color.fromRGBO(229, 229, 229, 1), width: 0.0),
                    ),
                      fillColor: Color.fromRGBO(229, 229, 229, 1),
                      filled: true,
                      hintText: 'Password',
                      suffixIcon: IconButton(onPressed: () {
                        _passVisibility = !_passVisibility;
                        setState(() {});
                      },
                          icon: _passVisibility ? Icon(Icons.visibility_off) : Icon(
                              Icons.visibility),color: Colors.grey,
                      ),
                      prefixIcon:
                          Image(image: AssetImage('assets/padlock.png')),
                      prefixStyle: const TextStyle(color: Colors.white),
                      counterText: '',
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
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, bottom: 20),
                  child: TextFormField(
                    maxLength: 12,cursorColor: Colors.black,
                    validator: (input) {
                      if (input!.isEmpty) {
                        return 'please Re enter Password';
                      } else if (input.length < 6) {
                        return 'please provide minimum 6 charters';
                      } else if(input.length > 15 ) {
                        return 'Password can not be greater than 15 characters';
                      }
                      else if (repasswordController.text !=
                          passwordController.text) {
                        return 'Password & Confirm Password should be same.';
                      }
                      return null;
                    },
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                          RegExp(r"[a-zA-Z0-9!@#$%^&*.]")),
                    ],
                    controller: repasswordController,
                    textInputAction: TextInputAction.next,
                    obscureText: _passVisibility1,
                    keyboardType: TextInputType.visiblePassword,
                    cursorHeight: 20,
                    autofocus: false,
                    onTap: () {},
                    style: TextStyle(color: Colors.black),
// controller: Controller,
                    decoration: InputDecoration(
                      counterText: '',
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(229, 229, 229, 1))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(229, 229, 229, 1))),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(229, 229, 229, 1))
                      ), focusedErrorBorder: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Color.fromRGBO(229, 229, 229, 1), width: 0.0),
                    ),
                      fillColor: Color.fromRGBO(229, 229, 229, 1),
                      filled: true,
                      hintText: 'Re-enter Password',
                      suffixIcon: IconButton(onPressed: () {
                        _passVisibility1 = !_passVisibility1;
                        setState(() {});
                      },
                          icon: _passVisibility1 ? Icon(Icons.visibility_off, color: Colors.grey,) : Icon(
                              Icons.visibility,color: Colors.grey,)
                      ),
                      prefixIcon:
                          Image(image: AssetImage('assets/padlock.png')),
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
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, bottom: 20),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    textInputAction: TextInputAction.done,
                    // controller: passwordController,
                    // obscureText: hidden2,
                    validator: (input) {
                      if (input!.isEmpty) {
                        return 'please enter Location';
                      }
                      return null;
                    },

                    cursorHeight: 20,
                    autofocus: false,
                    onTap: () {},
                    style: TextStyle(color: Colors.black),
// controller: Controller,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(229, 229, 229, 1))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(229, 229, 229, 1))),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(229, 229, 229, 1))
                      ), focusedErrorBorder: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Color.fromRGBO(229, 229, 229, 1), width: 0.0),
                    ),
                      fillColor: Color.fromRGBO(229, 229, 229, 1),
                      filled: true,
                      hintText: 'Enter Location',
                      prefixIcon: Icon(Icons.location_on_outlined),
                      suffixIcon: Icon(
                        Icons.my_location,
                        color: Color.fromRGBO(0, 172, 155, 1),
                      ),

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
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Radio(
                        value: SingingCharacter.lafayette,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                      RichText(
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          maxLines: 2,
                          textScaleFactor: 1,
                          text: TextSpan(
                              style: const TextStyle(
                                fontSize: 13,
                                color: Color.fromRGBO(0, 0, 0, 1),
                              ),
                              // fontFamily: Constants.futuraPT),
                              children: <TextSpan>[
                                const TextSpan(
                                  text: 'I agree with ',
                                ),
                                TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {},
                                  style: const TextStyle(
                                      color: Color.fromRGBO(60, 130, 255, 1),
                                      decoration: TextDecoration.underline,
                                      fontSize: 15),
                                  text: 'Privacy Policy',
                                ),
                                const TextSpan(
                                    text: " &  ",
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1))),
                                TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {},
                                  style: const TextStyle(
                                      color: Color.fromRGBO(60, 130, 255, 1),
                                      fontWeight: FontWeight.w400,
                                      decoration: TextDecoration.underline,
                                      fontSize: 15),
                                  text: 'Terms \n and Conditions ',
                                ),
                              ])),
                    ],
                  ),
                ),
                SizedBox(
                  height: Common.displayHeight(context) * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/google.png'),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset('assets/facebook.png'),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset('assets/Apple.png'),
                  ],
                ),
                SizedBox(
                  height: Common.displayHeight(context) * 0.02,
                ),
                CustomElevatedButton(
                    onPressed: () {
                      if(formkey.currentState!.validate()) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => OtpVerification()));
                      }
                    },
                    text: 'SIGN UP'),
                SizedBox(
                  height: Common.displayHeight(context) * 0.02,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
