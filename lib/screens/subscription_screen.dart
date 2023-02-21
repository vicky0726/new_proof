import 'package:flutter/material.dart';
import 'package:proof_app/widgets/custom_elevated_button.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({super.key});

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text("SUBSCRIPTION"),
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: _mediaQuery.size.width *2.1,
              width: double.infinity,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, top: 130, bottom: 250, right: 20),
                  child: Card(
                    elevation: 50,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Container(
                      width: 270,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 90,
                          ),
                          Text(
                            'Lorem ipsum dolor sit\n amet, consectetur \nadipiscing elit, sed do \neiusmod tempor',
                            style: TextStyle(
                              fontSize: 21,
                              // fontFamily: FontFamily.futuraPT,
                              // fontSize: SizeConfig.screenHeight! * 0.02,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Text(
                              '\$9.99/month',
                              style: TextStyle(
                                fontSize: 28,
                                // fontFamily: FontFamily.futuraPT,
                                // fontSize: SizeConfig.screenHeight! * 0.03,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          SizedBox(
                            height: 60,
                            width: 200,
                            child: CustomElevatedButton(
                                text: "Purchase now", onPressed: () {}),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 60,
                ),
                child: Image.asset(
                  'assets/Click.png',
                  height: 150,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
