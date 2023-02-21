import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:proof_app/common/common.dart';
import 'package:proof_app/home_page.dart';
import 'package:proof_app/screens/reset_password.dart';
import 'package:proof_app/utils/validator.dart';
import 'package:proof_app/widgets/custom_elevated_button.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController emailController = TextEditingController();

  var formkey = GlobalKey<FormState>();

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
        body: Container(
          padding: EdgeInsets.only(
            left: _mediaQuery.size.width * 0.01,
            right: _mediaQuery.size.width * 0.01,
            // top: _mediaQuery.size.height * 0.01,
            // bottom: _mediaQuery.size.height * 0.1
          ),
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Forgot Password',
                    style: TextStyle(
                        color: Color.fromRGBO(0, 172, 155, 1),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      child: Text(
                        'Enter email associated with \n              your account',
                        style: TextStyle(color: Color.fromRGBO(21, 0, 0, 1)),
                      ),
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextFormField(
                      cursorColor: Colors.black,
                      // controller: passwordController,
                      // obscureText: hidden2,
                      validator: (input) {
                        if (input!.isEmpty) {
                          return 'Please enter a Email address';
                        } else if(!Validator.isValidEmail(input)) {
                          return 'Please enter a valid Email address';
                        }
                        return null;
                      },
                      controller: emailController,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                            RegExp(r'[a-zA-Z0-9@.]'))
                      ],
                      cursorHeight: 20,maxLength: 15,
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
                        counterText: '',
                        hintText: 'Email',
                        prefixIcon:
                            Image(image: AssetImage('assets/mail.png')),

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
                    height: Common.displayHeight(context) * 0.25,
                  ),
                  CustomElevatedButton(
                      onPressed: () {
                        if(formkey.currentState!.validate()) {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ResetPassword()));
                        }
                      },
                      text: 'SEND CODE')
                ],
              ),
            ),
          ),
        ));
  }
}
