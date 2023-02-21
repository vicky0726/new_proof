import 'package:flutter/material.dart';
import 'package:proof_app/screens/proof_main.dart';
import 'package:proof_app/widgets/custom_elevated_button.dart';

class WelcomeProof extends StatefulWidget {
  const WelcomeProof({Key? key}) : super(key: key);

  @override
  State<WelcomeProof> createState() => _WelcomeProofState();
}

class _WelcomeProofState extends State<WelcomeProof> {
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Container(
      padding: EdgeInsets.only(
        left: _mediaQuery.size.width * 0.01,
        right: _mediaQuery.size.width * 0.01,
        top: _mediaQuery.size.height * 0.06,
        // bottom: _mediaQuery.size.height * 0.1
      ),
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Image(
            image: AssetImage('assets/New.png'),
            height: 180,
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              elevation: 50,
              shadowColor: Colors.black,
              color: Color.fromRGBO(255, 255, 255, 1),
              child: SizedBox(
                width: 300,
                height: 310,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        'Welcome to\n PROOF',
                        style: TextStyle(
                            color: Color.fromRGBO(
                              103,
                              101,
                              113,
                              1,
                            ),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.',
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      CustomElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    ProofMain(title: 'title'))
                            );
                          },
                          text: 'CONTINUE'),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
