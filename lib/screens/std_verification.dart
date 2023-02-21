import 'package:flutter/material.dart';
import 'package:proof_app/screens/activity_name.dart';
import 'package:proof_app/screens/other_documents.dart';
import 'package:proof_app/screens/upload_report.dart';

class StdVerification extends StatefulWidget {
  const StdVerification({Key? key}) : super(key: key);

  @override
  State<StdVerification> createState() => _StdVerificationState();
}

class _StdVerificationState extends State<StdVerification> {
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(Icons.arrow_back, color: Colors.black87)),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            'STD Verification',
            style:
                TextStyle(fontSize: 24, color: Color.fromRGBO(0, 172, 155, 1)),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => OtherDocuments()));

                },
                child: Text(
                  'Skip',
                  style: TextStyle(
                      fontSize: 15, color: Color.fromRGBO(0, 0, 0, 1)),
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
                left: _mediaQuery.size.width * 0.01,
                right: _mediaQuery.size.width * 0.01,
                top: _mediaQuery.size.height * 0.01,
                bottom: _mediaQuery.size.height * 0.1
                // left: _mediaQuery.size.width * 0.00,
                // right: _mediaQuery.size.width * 0.00,
                // top: _mediaQuery.size.height * 0.01,
                // bottom: _mediaQuery.size.height * 0.1
    ),
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  // textAlign: TextAlign.center,
                  ' Users can provide the update regarding their health \n status. Main motive behind this is to make user self \n aware about STDs. These documents are private to you.',
                  style: TextStyle(
                      fontSize: 15, color: Color.fromRGBO(0, 0, 0, 1)),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 100,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UploadReport()));
                    },
                    child: Card(
                      elevation: 4.0,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              CircleAvatar(
                                  foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                                  radius: 8,
                                  backgroundColor:
                                      Color.fromRGBO(100, 170, 154, 1)),
                              SizedBox(
                                width: 10,
                              ),
                              CircleAvatar(
                                radius: 8,
                                backgroundColor: Color.fromRGBO(40, 172, 155, 1),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              CircleAvatar(
                                radius: 9,
                                backgroundColor: Color.fromRGBO(0, 172, 155, 1),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Chlamydia',
                                style: TextStyle(
                                    fontSize: 21,
                                    fontWeight: FontWeight.normal,
                                    color: Color.fromRGBO(0, 0, 0, 1)),
                              ),
                            ],
                          ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: Card(
                    elevation: 4.0,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          CircleAvatar(
                              foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                              radius: 8,
                              backgroundColor: Color.fromRGBO(220, 223, 50, 1)),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                              radius: 8,
                              backgroundColor: Color.fromRGBO(243, 223, 50, 1)),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            radius: 9,
                            backgroundColor: Color.fromRGBO(243, 223, 50, 1),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Gonorrhea',
                            style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.normal,
                                color: Color.fromRGBO(0, 0, 0, 1)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: Card(
                    elevation: 4.0,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          CircleAvatar(
                              foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                              radius: 8,
                              backgroundColor: Color.fromRGBO(220, 223, 50, 1)),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Color.fromRGBO(243, 223, 50, 1),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                              radius: 9,
                              backgroundColor: Color.fromRGBO(243, 223, 50, 1)),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Syphilis',
                            style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.normal,
                                color: Color.fromRGBO(0, 0, 0, 1)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: Card(
                    elevation: 4.0,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          CircleAvatar(
                              foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                              radius: 8,
                              backgroundColor:
                                  Color.fromRGBO(100, 170, 154, 1)),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Color.fromRGBO(40, 172, 155, 1),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            radius: 9,
                            backgroundColor: Color.fromRGBO(0, 172, 155, 1),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'HIV',
                            style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.normal,
                                color: Color.fromRGBO(0, 0, 0, 1)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: Card(
                    elevation: 4.0,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          CircleAvatar(
                              foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                              radius: 8,
                              backgroundColor:
                                  Color.fromRGBO(100, 170, 154, 1)),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Color.fromRGBO(40, 172, 155, 1),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            radius: 9,
                            backgroundColor: Color.fromRGBO(0, 172, 155, 1),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Hepatitis B',
                            style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.normal,
                                color: Color.fromRGBO(0, 0, 0, 1)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: Card(
                    elevation: 4.0,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          CircleAvatar(
                              foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                              radius: 8,
                              backgroundColor:
                                  Color.fromRGBO(100, 170, 154, 1)),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Color.fromRGBO(40, 172, 155, 1),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            radius: 9,
                            backgroundColor: Color.fromRGBO(0, 172, 155, 1),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Hepatitis C',
                            style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.normal,
                                color: Color.fromRGBO(0, 0, 0, 1)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: Card(
                    elevation: 4.0,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          CircleAvatar(
                              foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                              radius: 8,
                              backgroundColor:
                                  Color.fromRGBO(100, 170, 154, 1)),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Color.fromRGBO(40, 172, 155, 1),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            radius: 9,
                            backgroundColor: Color.fromRGBO(0, 172, 155, 1),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Genital Herpes',
                            style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.normal,
                                color: Color.fromRGBO(0, 0, 0, 1)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // bottom: _mediaQuery.size.height * 0.1),
          ),
        ));
  }
}
