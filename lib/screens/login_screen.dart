import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:proof_app/buttons/login_button_screen.dart';
import 'package:proof_app/common/common.dart';
import 'package:proof_app/screens/forgot_password_screen.dart';
import 'package:proof_app/widgets/custom_elevated_button.dart';

import '../utils/validator.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _passVisibility = true;

  var formKey = GlobalKey<FormState>();
  RegExp pass_valid =
      RegExp(r"^(?=.?[A-Z])(?=.?[a-z])(?=.?[0-9])(?=.?[!@#$&*~]).{8,}$");

  bool validatePassword(String pass) {
    String _password = pass.trim();

    if (pass_valid.hasMatch(_password)) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);

    // final GlobalKey<ScaffoldState> formKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        padding: EdgeInsets.only(
          left: Common.displayWidth(context) * 0.01,
          right: Common.displayWidth(context) * 0.01,
          // top: Common.displayHeight(context) * 0.01,
          // bottom: _mediaQuery.size.height * 0.1
        ),
        height: double.infinity,
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    controller: emailController,
                    cursorColor: Colors.black,
                    textInputAction: TextInputAction.next,
                    cursorHeight: 20,
                    autofocus: false, maxLength: 30,
                    validator: (input) {
                      if (input!.isEmpty) {
                        return 'Please enter a Email address';
                      } else if (!Validator.isValidEmail(input)) {
                        return 'Please enter a valid Email address';
                      }
                      return null;
                    },
                    onTap: () {},
                    style: TextStyle(color: Colors.black),
// controller: Controller,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                          RegExp(r'[a-zA-Z0-9@.]'))
                    ],

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
                              color: Color.fromRGBO(229, 229, 229, 1))),
                      focusedErrorBorder: new OutlineInputBorder(
                        borderSide: new BorderSide(
                            color: Color.fromRGBO(229, 229, 229, 1),
                            width: 0.0),
                      ),
                      fillColor: Color.fromRGBO(229, 229, 229, 1),
                      filled: true,
                      counterText: '',
                      hintText: 'Enter your email',
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Colors.grey,
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
                  child: TextFormField(
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                          RegExp(r"[a-zA-Z0-9!@#$%^&*.]")),
                    ],
                    controller: passwordController,
                    textInputAction: TextInputAction.done,
                    validator: (input) {
                      if (input!.isEmpty) {
                        return 'please type Password';
                      } else if (input.length < 6) {
                        return 'please provide minimum 6 charters';
                      } else if (input.length > 15) {
                        return 'Password can not be greater than 15 characters';
                      }
                      // else if (!Validator.isValidPassword(input)) {
                      //   return 'Please should contain Capital & Small Characters, Special Symbol & Digits';
                      // }
                      return null;
                    },
                    // maxLength: 12,
                    obscureText: _passVisibility,
                    cursorHeight: 20,
                    maxLines: 1,
                    textAlign: TextAlign.left,
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
                              color: Color.fromRGBO(229, 229, 229, 1))),
                      focusedErrorBorder: new OutlineInputBorder(
                        borderSide: new BorderSide(
                          color: Color.fromRGBO(229, 229, 229, 1),
                        ),
                      ),
                      fillColor: Color.fromRGBO(229, 229, 229, 1),
                      filled: true,
                      hintText: 'Enter secure password',
                      suffixIcon: IconButton(
                        onPressed: () {
                          _passVisibility = !_passVisibility;
                          setState(() {});
                        },
                        icon: _passVisibility
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility),
                        color: Colors.grey,
                      ),
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: Colors.grey,
                      ),
                      // Image(image: AssetImage('assets/padlock.png')
                      // ),

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
                  height: Common.displayHeight(context) * 0.01,
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
                  height: Common.displayHeight(context) * 0.05,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ForgotPassword()));
                    },
                    child: Text('Forgot password?')),
                // Text(
                //   'Forgot Password',
                //   style: TextStyle(
                //     fontSize: 14,
                //     color: Color.fromRGBO(45, 109, 183, 1),
                //   ),
                // ),
                SizedBox(
                  height: Common.displayHeight(context) * 0.02,
                ),
                CustomElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LoginButton()));
                      }
                    },
                    text: 'LOGIN'),

                // SizedBox(
                //   height: Common.displayHeight(context)*0.01,
                // ),
                // CustomElevatedButton(
                //   onPressed: (){},
                //   text: 'Login',
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }

// void validateEmail(String val) {
//   if(val.isEmpty){
//     setState(() {
//       _errorMessage = "Email can not be empty";
//     });
//   }else if(!EmailValidator.validate(val, true)){
//     setState(() {
//       _errorMessage = "Invalid Email Address";
//     });
//   }else{
//     setState(() {
//
//       _errorMessage = "";
//     });
//   }

}
