import 'package:flutter/material.dart';
import 'package:proof_app/buttons/enable_location_screen.dart';
import 'package:proof_app/common/common.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Container(
      width: _mediaQuery.size.width * 1,
      height: _mediaQuery.size.height * 1,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Image(image: AssetImage('assets/Mask.png'),height: Common.displayHeight(context) * 0.2,),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              elevation: 50,
              shadowColor: Colors.black,
              color: Color.fromRGBO(255, 255, 255, 1),
              child: SizedBox(
                width: 300,
                height: 380,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        '"Proof" would like to \n Access Your Contacts',
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
                        height: 35,
                      ),
                      Image(
                        image: AssetImage('assets/mobile.png'),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        'Access is needed to save your My treat \nFriends information to your Contacts list.',
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      SizedBox(
                        width: 230,
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> EnableLocation()));
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100.0)),
                              backgroundColor: Color.fromRGBO(0, 172, 155, 1),
                            ),
                            child: Text(
                              'Allow',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 19),
                            )),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Don"t Allow',
                            style: TextStyle(
                                color: Color.fromRGBO(119, 134, 155, 1)),
                          ))
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
