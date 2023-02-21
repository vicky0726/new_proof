import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:proof_app/common/common.dart';
import 'package:proof_app/home_page.dart';
import 'package:proof_app/screens/create_profile_screen.dart';
import 'package:proof_app/screens/signup_screen.dart';
import 'package:proof_app/utils/validator.dart';
import 'package:proof_app/widgets/custom_elevated_button.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({Key? key}) : super(key: key);

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  TextEditingController controller = TextEditingController();

  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      //   appBar: AppBar(elevation: 0, backgroundColor: Colors.transparent,
      //   leading: SizedBox(
      //
      //   ),
      //   // leading: GestureDetector(
      //   //   onTap: () {
      //   //     Navigator.of(context).pop();
      //   //   },
      //   //   child: Icon(
      //   //     Icons.arrow_back_ios,
      //   //     color: Colors.black,
      //   //   ),
      //   // ),
      // ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            left: _mediaQuery.size.width * 0.01,
            right: _mediaQuery.size.width * 0.01,
            top: _mediaQuery.size.height * 0.01,
            // bottom: _mediaQuery.size.height * 0.1
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Form(
                key: formkey,
                child: Column(
                  children: [
                    SizedBox(
                      height: Common.displayHeight(context) * 0.09,
                    ),
                    Text(
                      '2 Step Verification',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromRGBO(0, 172, 155, 1),
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: _mediaQuery.size.width * 0.07,
                    ),
                    Text(
                      'A 6-digit verification code \n was just sent to ●●●●●●@gmail.com',
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    PinCodeTextField(
                      validator: (input) {
                        if (input!.isEmpty) {
                          return 'Please enter otp';
                        }
                        return null;
                      },
                      cursorHeight: 19,
                      enablePinAutofill: true,
                      controller: controller,
                      textStyle: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.normal),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                      ],
                      length: 6,
                      keyboardType: TextInputType.number,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(8),
                        fieldHeight: 65,
                        fieldWidth: 40,
                        inactiveColor: Colors.grey,
                        selectedColor: Colors.lightBlue,
                        activeFillColor: Colors.blue,
                        selectedFillColor: Colors.white,
                        inactiveFillColor: Colors.grey.shade100,
                        borderWidth: 1,
                      ),
                      animationDuration: Duration(milliseconds: 300),

                      // backgroundColor: Colors.white,

                      enableActiveFill: false,

                      // errorAnimationController: errorController,
                      // controller: textEditingController,

                      onChanged: (value) {},
                      appContext: context,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '00:26',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromRGBO(45, 109, 183, 1),
                      ),
                    ),
                    SizedBox(
                      height: 130,
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
                          style: TextStyle(
                              color: Color.fromRGBO(152, 152, 152, 1)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomElevatedButton(
                      onPressed: () {
                        if (formkey.currentState!.validate()) {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CreateProfile()));
                        }
                      },
                      text: 'CONTINUE',
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      // bottomNavigationBar:  Container(
      //     height: 70,
      //     width: double.infinity,
      //     padding: EdgeInsets.only(bottom: 12, left: 10, right: 10),
      //     child: CustomElevatedButton(onPressed: () {
      //       Navigator.of(context).push(
      //           MaterialPageRoute(builder: (context) => CreateProfile()));
      //     }, text: 'CONTINUE')
      // ),
    );
  }
}
