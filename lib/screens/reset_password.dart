import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:proof_app/screens/create_profile_screen.dart';
import 'package:proof_app/screens/forgot_password_screen.dart';
import 'package:proof_app/utils/validator.dart';
import 'package:proof_app/widgets/custom_elevated_button.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController repasswordController = TextEditingController();
  bool _passVisibility = true;
  bool _passVisibility1 = true;

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
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
              left: _mediaQuery.size.width * 0.01,
              right: _mediaQuery.size.width * 0.01,
              top: _mediaQuery.size.height * 0.01,
              bottom: _mediaQuery.size.height * 0.1),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                'Reset Password',
                style: TextStyle(
                    color: Color.fromRGBO(0, 172, 155, 1),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 110,
              ),
              SizedBox(
                width: 350,
                child: TextFormField(
                  cursorColor: Colors.black,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(
                        RegExp(r'[0-9]'))
                  ],
                  cursorHeight: 20,maxLength: 6,
                  autofocus: false,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
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
                    counterText: '',
                    hintText: 'Code',
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
                height: 25,
              ),
              SizedBox(
                width: 350,
                child: TextFormField(
                  controller: passwordController,
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
                    } else if(Validator.isValidPassword(input)) {
                      return 'Please should contain Capital & Small Characters, Special Symbol & Digits';
                    }
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
                    fillColor: Color.fromRGBO(229, 229, 229, 1),
                    filled: true,
                    hintText: 'New Password',
                    suffixIcon: IconButton(onPressed: () {
                      _passVisibility = !_passVisibility;
                      setState(() {});
                    },
                        icon: _passVisibility ? Icon(Icons.visibility_off) : Icon(
                            Icons.visibility)
                    ),
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
              SizedBox(
                height: 25,
              ),
              SizedBox(
                width: 350,
                child: TextFormField(
                  controller: repasswordController,
                  obscureText: _passVisibility1,
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
                    } else if(Validator.isValidPassword(input)) {
                      return 'Please should contain Capital & Small Characters, Special Symbol & Digits';
                    }
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
                    fillColor: Color.fromRGBO(229, 229, 229, 1),
                    filled: true,
                    hintText: 'Confirm New Password',
                    suffixIcon: IconButton(onPressed: () {
                      _passVisibility1 = !_passVisibility1;
                      setState(() {});
                    },
                        icon: _passVisibility1 ? Icon(Icons.visibility_off) : Icon(
                            Icons.visibility)
                    ),
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
              SizedBox(
                height: 120,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Didn’t receive a email?'),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    'Resend Code',
                    style: TextStyle(color: Color.fromRGBO(45, 109, 183, 1)),
                  ),

                ],
              ),SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: CustomElevatedButton(onPressed: (){}, text: 'CONTINUE')
              )
            ],
          ),
        ),
      ),
    );
  }
}
