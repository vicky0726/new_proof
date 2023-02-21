import 'package:flutter/material.dart';
import 'package:proof_app/common/common.dart';
import 'package:proof_app/screens/find_friends.dart';

class Message_View extends StatefulWidget {
  const Message_View({Key? key}) : super(key: key);

  @override
  State<Message_View> createState() => _Message_ViewState();
}

class _Message_ViewState extends State<Message_View> {
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 5,
        backgroundColor: Colors.white,
        toolbarHeight: _mediaQuery.size.height / 10,
        title: Image(image: AssetImage('assets/MaskGroup.png')),
        actions: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(image: AssetImage('assets/Search.png')),
              SizedBox(
                width: Common.displayWidth(context) * 0.10,
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            left: Common.displayWidth(context) * 0.01,
            right: Common.displayWidth(context) * 0.01,
            top: Common.displayHeight(context) * 0.01,
            // bottom: _mediaQuery.size.height * 0.1
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: Divider(
                    endIndent: 10,
                    height: Common.displayHeight(context) * 0.15,
                    thickness: 2,
                    color: Color.fromRGBO(0, 211, 178, 1),
                  )),
                  Text(
                    "MESSAGE BURROW",
                    style: TextStyle(fontSize: 26),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Expanded(
                      child: Divider(
                    indent: 10,
                    thickness: 2,
                    color: Color.fromRGBO(0, 211, 178, 1),
                  )),
                ],
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(
                      radius: 35.0,
                      backgroundColor: Colors.yellow,
                      backgroundImage: AssetImage('assets/Avatar.png')),
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
                  // title: Text(
                  //   'Persons Name',
                  //   style: TextStyle(fontSize: 21),
                  // ),
                  textColor: Color.fromRGBO(0, 0, 0, 1),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),

                ),
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(
                      radius: 35.0,
                      backgroundColor: Colors.yellow,
                      backgroundImage: AssetImage('assets/Avatar.png')),
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
                  // title: Text(
                  //   'Persons Name',
                  //   style: TextStyle(fontSize: 21),
                  // ),
                  textColor: Color.fromRGBO(0, 0, 0, 1),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),

                ),
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(
                      radius: 35.0,
                      backgroundColor: Colors.yellow,
                      backgroundImage: AssetImage('assets/Avatar.png')),
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
                  // title: Text(
                  //   'Persons Name',
                  //   style: TextStyle(fontSize: 21),
                  // ),
                  textColor: Color.fromRGBO(0, 0, 0, 1),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),

                ),
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(
                      radius: 35.0,
                      backgroundColor: Colors.yellow,
                      backgroundImage: AssetImage('assets/Avatar.png')),
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
                  // title: Text(
                  //   'Persons Name',
                  //   style: TextStyle(fontSize: 21),
                  // ),
                  textColor: Color.fromRGBO(0, 0, 0, 1),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),

                ),
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(
                      radius: 35.0,
                      backgroundColor: Colors.yellow,
                      backgroundImage: AssetImage('assets/Avatar.png')),
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
                  // title: Text(
                  //   'Persons Name',
                  //   style: TextStyle(fontSize: 21),
                  // ),
                  textColor: Color.fromRGBO(0, 0, 0, 1),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
