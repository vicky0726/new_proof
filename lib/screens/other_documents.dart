import 'package:flutter/material.dart';
import 'package:proof_app/buttons/welcome_proof.dart';
import 'package:proof_app/common/common.dart';
import 'package:proof_app/screens/activity_name.dart';
import 'package:proof_app/screens/std_verification.dart';
import 'package:proof_app/widgets/custom_elevated_button.dart';

class OtherDocuments extends StatefulWidget {
  const OtherDocuments({Key? key}) : super(key: key);

  @override
  State<OtherDocuments> createState() => _OtherDocumentsState();
}

class _OtherDocumentsState extends State<OtherDocuments> {
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Other Documents',
          style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600, color: Color.fromRGBO(0, 172, 155, 1)),
        ),
        actions: [
          TextButton(
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(builder: (context) => OtherDocuments()));
              },
              child: Text(
                'Skip',
                style:
                    TextStyle(fontSize: 15, color: Color.fromRGBO(0, 0, 0, 1)),
              ))
        ],
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => StdVerification()),
            );
          },
        ),
      ),
      body: Center(
        child: Container(
          height: Common.displayHeight(context) * 0.9,
          width: Common.displayWidth(context) * 0.9,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: Common.displayHeight(context) * 0.01,
              ),
              SizedBox(
                width: 100,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    SizedBox(
                        height: 160,
                        child: Image(image: AssetImage('assets/Detail.png'))),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 100,
                      ),
                      child: Image(image: AssetImage('assets/pluscircle.png')),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Upload Covid Card',
                style: TextStyle(
                    fontSize: 21, color: Color.fromRGBO(153, 153, 153, 1)),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 110,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    SizedBox(
                        height: 120,
                        child: Image(image: AssetImage('assets/Beg.png'))),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 100,
                      ),
                      child: Image(image: AssetImage('assets/pluscircle.png')),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Upload Drivers License or Passport',
                style: TextStyle(
                    fontSize: 21, color: Color.fromRGBO(153, 153, 153, 1)),
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.07,
              ),
              CustomElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> WelcomeProof()));
              }, text: 'CONTINUE'),
            ],
          ),
        ),
      ),
    );
  }
}
