import 'package:flutter/material.dart';
import 'package:proof_app/common/common.dart';
import 'package:proof_app/screens/login_screen.dart';
import 'package:proof_app/screens/signup_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int tabNumber = 0;
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        width: _mediaQuery.size.width * 1,
        height: _mediaQuery.size.height * 1,
        decoration: BoxDecoration(
            color: Colors.white
        ),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Image(image: AssetImage('assets/Mask.png'),height: Common.displayHeight(context)*0.2,
            ), SizedBox(
              height: 40,
            ),

            Expanded(
              child: DefaultTabController(
                initialIndex: tabNumber,
                length: 2,
                child: Column(
                  children: [
                    TabBar(
                      onTap: (val) {
                        setState(() {
                          tabNumber = val;
                        });
                      },
                      labelPadding: EdgeInsets.only(left: 10,right: 10,bottom: 10,),
                      indicatorPadding: EdgeInsets.zero,
                      indicatorColor: Colors.black,
                      unselectedLabelColor: Colors.black,
                      labelColor: Colors.black,
                      padding: EdgeInsets.zero,
                      indicatorSize: TabBarIndicatorSize.label,
                      // controller: ,
                      tabs: [
                        Text('LOGIN',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        Text('SIGN UP',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: <Widget>[
                          LoginScreen(),
                          SignUpScreen(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}