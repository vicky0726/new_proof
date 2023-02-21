import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:proof_app/common/common.dart';
import 'package:proof_app/screens/settings_page.dart';
import 'package:proof_app/utils/validator.dart';
import 'package:proof_app/widgets/custom_elevated_button.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  var formkey = GlobalKey<FormState>();
  TextEditingController repasswordController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _passVisibility = true;
  bool _passVisibility1 = true;
  bool _passVisibility2 = true;
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
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        title: Text(
          'CHANGE PASSWORD',
          style: TextStyle(fontSize: 24, color: Color.fromRGBO(0, 172, 155, 1)),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: _mediaQuery.size.width * 0.01,
                  right: _mediaQuery.size.width * 0.01,
                  // top: _mediaQuery.size.height * 0.01,
                  // bottom: _mediaQuery.size.height * 0.1
                ),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: _mediaQuery.size.width * 0.9,
                      child: TextFormField(
                        maxLength: 12,
                        obscureText: _passVisibility,
                        // controller: passwordController,
                        // obscureText: hidden2,
                        validator: (input) {
                          if (input!.isEmpty) {
                            return 'please enter old Password';
                          }
                          return null;
                        },
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z0-9!@#$%^&*.]")),
                          ],
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
                          errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(229, 229, 229, 1))
                          ), focusedErrorBorder: new OutlineInputBorder(
                          borderSide: new BorderSide(color: Color.fromRGBO(229, 229, 229, 1), width: 0.0),
                        ),
                          fillColor: Color.fromRGBO(229, 229, 229, 1),
                          filled: true,
                          hintText: 'Old Password',
                          counterText: '',
                          suffixIcon: IconButton(onPressed: () {
                            _passVisibility = !_passVisibility;
                            setState(() {});
                          },
                              icon: _passVisibility ? Icon(Icons.visibility_off,color: Colors.grey,) : Icon(
                                  Icons.visibility,color: Colors.grey,)
                          ),
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
                      height: 25,
                    ),
                    SizedBox(
                      width: _mediaQuery.size.width * 0.9,
                      child: TextFormField(
                        controller: passwordController,
                        maxLength: 12,
                        obscureText: _passVisibility1,
                        validator: (input) {
                          if (input!.isEmpty) {
                            return 'please type Password';
                          } else if (input.length < 6) {
                            return 'please provide minimum 6 charters';
                          } else if(input.length > 15 ) {
                            return 'Password can not be greater than 15 characters';
                          }
                          else if(Validator.isValidPassword(input)) {
                            return 'Please should contain Capital & Small Characters, Special Symbol & Digits';
                          }
                          return null;
                        },
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z0-9!@#$%^&*.]")),
                        ],

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
                          errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(229, 229, 229, 1))
                          ), focusedErrorBorder: new OutlineInputBorder(
                          borderSide: new BorderSide(color: Color.fromRGBO(229, 229, 229, 1), width: 0.0),
                        ),
                          fillColor: Color.fromRGBO(229, 229, 229, 1),
                          filled: true,
                          // labelText: 'New Password',
                          hintText: 'New Password',
                          counterText: '',
                          suffixIcon: IconButton(onPressed: () {
                            _passVisibility1 = !_passVisibility1;
                            setState(() {});
                          },
                              icon: _passVisibility1 ? Icon(Icons.visibility_off,color: Colors.grey,) : Icon(
                                  Icons.visibility,color: Colors.grey,)
                          ),

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
                      height: 25,
                    ),
                    SizedBox(
                      width: _mediaQuery.size.width * 0.9,
                      child: TextFormField(
                        controller: repasswordController,
                        validator: (input) {
                          if (input!.isEmpty) {
                            return 'please Conform Password';
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
                          FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z0-9!@#$%^&*.]")),
                        ],
                        obscureText: _passVisibility2,
                        // controller: passwordController,
                        // obscureText: hidden2,


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
                          counterText: '',
                          hintText: 'Confirm New Password',
                          suffixIcon: IconButton(onPressed: () {
                            _passVisibility2 = !_passVisibility2;
                            setState(() {});
                          },
                              icon: _passVisibility2 ? Icon(Icons.visibility_off,color: Colors.grey,) : Icon(
                                  Icons.visibility,color: Colors.grey,)
                          ),
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
                      height: Common.displayHeight(context) * 0.35,
                    ),
                    CustomElevatedButton(
                        onPressed: () {
                          if(formkey.currentState!.validate()) {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SettingsPage()));
                          }
                        },

                     text: ('Submit')),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
