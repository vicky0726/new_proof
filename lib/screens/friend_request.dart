import 'package:flutter/material.dart';
import 'package:proof_app/common/common.dart';

class FriendRequest extends StatefulWidget {
  const FriendRequest({Key? key}) : super(key: key);

  @override
  State<FriendRequest> createState() => _FriendRequestState();
}

class _FriendRequestState extends State<FriendRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
            // Navigator.of(context).pushAndRemoveUntil(
            //     MaterialPageRoute(builder: (_) => ProofMain(title: '')),
            //     (route) => false);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        title: Text(
          'FRIENDS',
          style: TextStyle(fontSize: 24, color: Color.fromRGBO(0, 172, 155, 1)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Row(
            //   children: [
            //     Expanded(
            //         child: Divider(
            //       endIndent: 30,
            //       height: Common.displayHeight(context) * 0.15,
            //       thickness: 2,
            //       color: Color.fromRGBO(0, 211, 178, 1),
            //     )),
            //     Text(
            //       "FLUFFLE",
            //       style: TextStyle(fontSize: 29),
            //     ),
            //     Expanded(
            //         child: Divider(
            //       indent: 30,
            //       thickness: 2,
            //       color: Color.fromRGBO(0, 211, 178, 1),
            //     )),
            //   ],
            // ),
            SizedBox(
              height: Common.displayHeight(context) * 0.09,
            ),
            Center(
              child: Text(
                'FRIEND REQUESTS',
                style:
                    TextStyle(fontWeight: FontWeight.w600,fontSize: 14, color: Color.fromRGBO(0, 0, 0, 1)),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ListTile(
              subtitle: Row(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 7.0,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 5),
                      child: Row(
                        children: [
                          CircleAvatar(
                            foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                            radius: 4,
                            backgroundColor:
                            Color.fromRGBO(220, 223, 50, 1),
                          ),
                          SizedBox(
                            width: Common.displayWidth(context) * 0.004,
                          ),
                          CircleAvatar(
                            foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                            radius: 4,
                            backgroundColor:
                            Color.fromRGBO(220, 223, 50, 1),
                          ),
                          SizedBox(
                            width: Common.displayWidth(context) * 0.004,
                          ),
                          CircleAvatar(
                            foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                            radius: 4,
                            backgroundColor:
                            Color.fromRGBO(220, 223, 50, 1),
                          ),
                          SizedBox(
                            width: Common.displayWidth(context) * 0.004,
                          ),
                          Text(
                            'STD',
                            style: TextStyle(fontSize: 8),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: Common.displayWidth(context) * 0.04,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 7.0,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 5),
                      child: Row(
                        children: [
                          CircleAvatar(
                            foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                            radius: 4,
                            backgroundColor: Color.fromRGBO(8, 174, 158, 1),
                          ),
                          SizedBox(
                            width: Common.displayWidth(context) * 0.004,
                          ),
                          CircleAvatar(
                            foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                            radius: 4,
                            backgroundColor: Color.fromRGBO(8, 174, 158, 1),
                          ),
                          SizedBox(
                            width: Common.displayWidth(context) * 0.004,
                          ),
                          CircleAvatar(
                            foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                            radius: 4,
                            backgroundColor: Color.fromRGBO(8, 174, 158, 1),
                          ),
                          SizedBox(
                            width: Common.displayWidth(context) * 0.004,
                          ),
                          Text(
                            'COVID VACCINE',
                            style: TextStyle(fontSize: 7),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              leading: CircleAvatar(
                child: Image(image: AssetImage('assets/Style.png')),
              ),
              title: Row(
                children: [
                  Text(
                    'Persons Name',
                    style: TextStyle(fontSize: 21),
                  ),
                  SizedBox(
                    width: Common.displayWidth(context) * 0.02,
                  ),
                  Image(
                    image: AssetImage('assets/Verified.png'),
                    width: 15,
                  )
                ],
              ),
              // title: Text(
              //   'Persons Name',
              //   style: TextStyle(fontSize: 21),
              // ),

              trailing: Column(
                children: [
                  SizedBox(
                    height: Common.displayHeight(context) * 0.01,
                  ),
                  Text(
                    'Accept',
                    style: TextStyle(
                        fontSize: 14, color: Color.fromRGBO(5, 123, 0, 1)),
                  ),
                  SizedBox(height: Common.displayHeight(context) * 0.01),
                  Text(
                    'Reject',
                    style: TextStyle(
                        fontSize: 14, color: Color.fromRGBO(5, 123, 0, 1)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Common.displayHeight(context) * 0.07,
            ),
            Center(
              child: Text(
                'FRIENDS',
                style:
                    TextStyle(fontSize: 14, color: Color.fromRGBO(0, 0, 0, 1)),
              ),
            ),
            SizedBox(
              height: Common.displayHeight(context) * 0.05,
            ),
            ListTile(
              subtitle: Row(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 7.0,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 5),
                      child: Row(
                        children: [
                          CircleAvatar(
                            foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                            radius: 4,
                            backgroundColor:
                            Color.fromRGBO(220, 223, 50, 1),
                          ),
                          SizedBox(
                            width: Common.displayWidth(context) * 0.004,
                          ),
                          CircleAvatar(
                            foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                            radius: 4,
                            backgroundColor:
                            Color.fromRGBO(220, 223, 50, 1),
                          ),
                          SizedBox(
                            width: Common.displayWidth(context) * 0.004,
                          ),
                          CircleAvatar(
                            foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                            radius: 4,
                            backgroundColor:
                            Color.fromRGBO(220, 223, 50, 1),
                          ),
                          SizedBox(
                            width: Common.displayWidth(context) * 0.004,
                          ),
                          Text(
                            'STD',
                            style: TextStyle(fontSize: 8),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: Common.displayWidth(context) * 0.04,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 7.0,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 5),
                      child: Row(
                        children: [
                          CircleAvatar(
                            foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                            radius: 4,
                            backgroundColor: Color.fromRGBO(8, 174, 158, 1),
                          ),
                          SizedBox(
                            width: Common.displayWidth(context) * 0.004,
                          ),
                          CircleAvatar(
                            foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                            radius: 4,
                            backgroundColor: Color.fromRGBO(8, 174, 158, 1),
                          ),
                          SizedBox(
                            width: Common.displayWidth(context) * 0.004,
                          ),
                          CircleAvatar(
                            foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                            radius: 4,
                            backgroundColor: Color.fromRGBO(8, 174, 158, 1),
                          ),
                          SizedBox(
                            width: Common.displayWidth(context) * 0.004,
                          ),
                          Text(
                            'COVID VACCINE',
                            style: TextStyle(fontSize: 7),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              leading: CircleAvatar(
                child: Image(image: AssetImage('assets/Style.png')),
              ),
              title: Row(
                children: [
                  Text(
                    'Persons Name',
                    style: TextStyle(fontSize: 21),
                  ),
                  SizedBox(
                    width: Common.displayWidth(context) * 0.02,
                  ),
                  Image(
                    image: AssetImage('assets/Verified.png'),
                    width: 15,
                  )
                ],
              ),
              // title: Text(
              //   'Persons Name',
              //   style: TextStyle(fontSize: 21),
              // ),

              trailing: Column(
                children: [
                  SizedBox(
                    height: Common.displayHeight(context) * 0.01,
                  ),
                  Text(
                    'Remove',
                    style: TextStyle(
                        fontSize: 14, color: Color.fromRGBO(224, 138, 0, 1)),
                  ),
                  SizedBox(height: Common.displayHeight(context) * 0.01),
                  Text(
                    'Friend',
                    style: TextStyle(
                        fontSize: 14, color: Color.fromRGBO(224, 138, 0, 1)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Common.displayHeight(context) * 0.05,
            ),
            ListTile(
              subtitle: Row(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 7.0,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 5),
                      child: Row(
                        children: [
                          CircleAvatar(
                            foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                            radius: 4,
                            backgroundColor:
                            Color.fromRGBO(220, 223, 50, 1),
                          ),
                          SizedBox(
                            width: Common.displayWidth(context) * 0.004,
                          ),
                          CircleAvatar(
                            foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                            radius: 4,
                            backgroundColor:
                            Color.fromRGBO(220, 223, 50, 1),
                          ),
                          SizedBox(
                            width: Common.displayWidth(context) * 0.004,
                          ),
                          CircleAvatar(
                            foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                            radius: 4,
                            backgroundColor:
                            Color.fromRGBO(220, 223, 50, 1),
                          ),
                          SizedBox(
                            width: Common.displayWidth(context) * 0.004,
                          ),
                          Text(
                            'STD',
                            style: TextStyle(fontSize: 8),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: Common.displayWidth(context) * 0.02,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 7.0,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 5),
                      child: Row(
                        children: [
                          CircleAvatar(
                            foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                            radius: 4,
                            backgroundColor: Color.fromRGBO(8, 174, 158, 1),
                          ),
                          SizedBox(
                            width: Common.displayWidth(context) * 0.004,
                          ),
                          CircleAvatar(
                            foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                            radius: 4,
                            backgroundColor: Color.fromRGBO(8, 174, 158, 1),
                          ),
                          SizedBox(
                            width: Common.displayWidth(context) * 0.004,
                          ),
                          CircleAvatar(
                            foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                            radius: 4,
                            backgroundColor: Color.fromRGBO(8, 174, 158, 1),
                          ),
                          SizedBox(
                            width: Common.displayWidth(context) * 0.004,
                          ),
                          Text(
                            'COVID VACCINE',
                            style: TextStyle(fontSize: 7),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              leading: CircleAvatar(
                child: Image(image: AssetImage('assets/Style.png')),
              ),
              title: Row(
                children: [
                  Text(
                    'Persons Name',
                    style: TextStyle(fontSize: 21),
                  ),
                  SizedBox(
                    width: Common.displayWidth(context) * 0.02,
                  ),
                  Image(
                    image: AssetImage('assets/Verified.png'),
                    width: 15,
                  )
                ],
              ),
              // title: Text(
              //   'Persons Name',
              //   style: TextStyle(fontSize: 21),
              // ),

              trailing: Column(
                children: [
                  SizedBox(
                    height: Common.displayHeight(context) * 0.01,
                  ),
                  Text(
                    'Remove',
                    style: TextStyle(
                        fontSize: 14, color: Color.fromRGBO(224, 138, 0, 1)),
                  ),
                  SizedBox(height: Common.displayHeight(context) * 0.01),
                  Text(
                    'Friend',
                    style: TextStyle(
                        fontSize: 14, color: Color.fromRGBO(224, 138, 0, 1)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Common.displayHeight(context) * 0.05,
            ),
            ListTile(
              subtitle: Row(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 7.0,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 5),
                      child: Row(
                        children: [
                          CircleAvatar(
                            foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                            radius: 4,
                            backgroundColor:
                            Color.fromRGBO(220, 223, 50, 1),
                          ),
                          SizedBox(
                            width: Common.displayWidth(context) * 0.004,
                          ),
                          CircleAvatar(
                            foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                            radius: 4,
                            backgroundColor:
                            Color.fromRGBO(220, 223, 50, 1),
                          ),
                          SizedBox(
                            width: Common.displayWidth(context) * 0.004,
                          ),
                          CircleAvatar(
                            foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                            radius: 4,
                            backgroundColor:
                            Color.fromRGBO(220, 223, 50, 1),
                          ),
                          SizedBox(
                            width: Common.displayWidth(context) * 0.004,
                          ),
                          Text(
                            'STD',
                            style: TextStyle(fontSize: 8),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: Common.displayWidth(context) * 0.04,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 7.0,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 5),
                      child: Row(
                        children: [
                          CircleAvatar(
                            foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                            radius: 4,
                            backgroundColor: Color.fromRGBO(8, 174, 158, 1),
                          ),
                          SizedBox(
                            width: Common.displayWidth(context) * 0.004,
                          ),
                          CircleAvatar(
                            foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                            radius: 4,
                            backgroundColor: Color.fromRGBO(8, 174, 158, 1),
                          ),
                          SizedBox(
                            width: Common.displayWidth(context) * 0.004,
                          ),
                          CircleAvatar(
                            foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                            radius: 4,
                            backgroundColor: Color.fromRGBO(8, 174, 158, 1),
                          ),
                          SizedBox(
                            width: Common.displayWidth(context) * 0.004,
                          ),
                          Text(
                            'COVID VACCINE',
                            style: TextStyle(fontSize: 7),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              leading: CircleAvatar(
                child: Image(image: AssetImage('assets/Style.png')),
              ),
              title: Row(
                children: [
                  Text(
                    'Persons Name',
                    style: TextStyle(fontSize: 21),
                  ),
                  SizedBox(
                    width: Common.displayWidth(context) * 0.02,
                  ),
                  Image(
                    image: AssetImage('assets/Verified.png'),
                    width: 15,
                  )
                ],
              ),
              // title: Text(
              //   'Persons Name',
              //   style: TextStyle(fontSize: 21),
              // ),

              trailing: Column(
                children: [
                  SizedBox(
                    height: Common.displayHeight(context) * 0.01,
                  ),
                  Text(
                    'Remove',
                    style: TextStyle(
                        fontSize: 14, color: Color.fromRGBO(224, 138, 0, 1)),
                  ),
                  SizedBox(height: Common.displayHeight(context) * 0.01),
                  Text(
                    'Friend',
                    style: TextStyle(
                        fontSize: 14, color: Color.fromRGBO(224, 138, 0, 1)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Common.displayHeight(context) * 0.05,
            ),
            ListTile(
              subtitle: Row(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 7.0,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 5),
                      child: Row(
                        children: [
                          CircleAvatar(
                            foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                            radius: 4,
                            backgroundColor:
                            Color.fromRGBO(220, 223, 50, 1),
                          ),
                          SizedBox(
                            width: Common.displayWidth(context) * 0.004,
                          ),
                          CircleAvatar(
                            foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                            radius: 4,
                            backgroundColor:
                            Color.fromRGBO(220, 223, 50, 1),
                          ),
                          SizedBox(
                            width: Common.displayWidth(context) * 0.004,
                          ),
                          CircleAvatar(
                            foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                            radius: 4,
                            backgroundColor:
                            Color.fromRGBO(220, 223, 50, 1),
                          ),
                          SizedBox(
                            width: Common.displayWidth(context) * 0.004,
                          ),
                          Text(
                            'STD',
                            style: TextStyle(fontSize: 8),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: Common.displayWidth(context) * 0.04,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 7.0,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 5),
                      child: Row(
                        children: [
                          CircleAvatar(
                            foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                            radius: 4,
                            backgroundColor: Color.fromRGBO(8, 174, 158, 1),
                          ),
                          SizedBox(
                            width: Common.displayWidth(context) * 0.004,
                          ),
                          CircleAvatar(
                            foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                            radius: 4,
                            backgroundColor: Color.fromRGBO(8, 174, 158, 1),
                          ),
                          SizedBox(
                            width: Common.displayWidth(context) * 0.004,
                          ),
                          CircleAvatar(
                            foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                            radius: 4,
                            backgroundColor: Color.fromRGBO(8, 174, 158, 1),
                          ),
                          SizedBox(
                            width: Common.displayWidth(context) * 0.004,
                          ),
                          Text(
                            'COVID VACCINE',
                            style: TextStyle(fontSize: 7),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              leading: CircleAvatar(
                child: Image(image: AssetImage('assets/Style.png')),
              ),
              title: Row(
                children: [
                  Text(
                    'Persons Name',
                    style: TextStyle(fontSize: 21),
                  ),
                  SizedBox(
                    width: Common.displayWidth(context) * 0.02,
                  ),
                  Image(
                    image: AssetImage('assets/Verified.png'),
                    width: 15,
                  )
                ],
              ),
              // title: Text(
              //   'Persons Name',
              //   style: TextStyle(fontSize: 21),
              // ),

              trailing: Column(
                children: [
                  SizedBox(
                    height: Common.displayHeight(context) * 0.01,
                  ),
                  Text(
                    'Remove',
                    style: TextStyle(
                        fontSize: 14, color: Color.fromRGBO(224, 138, 0, 1)),
                  ),
                  SizedBox(height: Common.displayHeight(context) * 0.01),
                  Text(
                    'Friend',
                    style: TextStyle(
                        fontSize: 14, color: Color.fromRGBO(224, 138, 0, 1)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
