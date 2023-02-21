import 'package:flutter/material.dart';
import 'package:proof_app/common/common.dart';
import 'package:proof_app/models/Dummy_data.dart';
import 'package:proof_app/screens/std_verification.dart';
import 'package:proof_app/screens/std_verification_screen.dart';

class StdResult extends StatefulWidget {
  const StdResult({Key? key}) : super(key: key);

  @override
  State<StdResult> createState() => _StdResultState();
}

class _StdResultState extends State<StdResult> {

  List<StdNames> stdnameData = [];
  @override
  void initState() {
    stdnameData.addAll(DummyData.stdname);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
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
            'STD RESULTS',
            style:
                TextStyle(fontSize: 24, color: Color.fromRGBO(0, 172, 155, 1)),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> StdVerificationScreen()));
                },
                child: Image(
                    width: Common.displayWidth(context) * 0.06,
                    image: AssetImage('assets/Add.png')),
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(bottom: 10, top: 20),
          child: ListView.builder(
            itemCount: stdnameData.length,
              itemBuilder: (BuildContext context,index) {
                return Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 25, bottom: 25),
                    child: ListTile(
                      leading: Container(
                        width: 300,
                        height: double.infinity,
                        child: Row(
                          children: [
                            SizedBox(
                              width: Common.displayWidth(context) * 0.02,
                            ),
                            CircleAvatar(
                                foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                                radius: 8,
                                backgroundColor:
                                    Color.fromRGBO(100, 170, 154, 1)),
                            SizedBox(
                              width: Common.displayWidth(context) * 0.02,
                            ),
                            CircleAvatar(
                              radius: 8,
                              backgroundColor: Color.fromRGBO(40, 172, 155, 1),
                            ),
                            SizedBox(
                              width: Common.displayWidth(context) * 0.02,
                            ),
                            CircleAvatar(
                              radius: 9,
                              backgroundColor: Color.fromRGBO(0, 172, 155, 1),
                            ),
                            SizedBox(
                              width: Common.displayWidth(context) * 0.06,
                            ),
                            Text(
                              stdnameData[index].std,
                              style:
                                  TextStyle(fontSize: 21, color: Colors.black),
                            )
                          ],
                        ),
                      ),
                      trailing: const Text(
                        "11/01/2021",
                        style: TextStyle(color: Colors.green, fontSize: 12),
                      ),
                      // title: Text(
                      //   "Chlamydia",
                      //   style: TextStyle(fontSize: 21, color: Colors.black),
                      // )
                    ),
                  ),
                );
              }),
        )
        // body: SingleChildScrollView(
        //   child: Column(
        //     children: [
        //       SizedBox(
        //         height: Common.displayHeight(context) * 0.06,
        //       ),
        //       SizedBox(
        //         height: Common.displayHeight(context) * 0.15,
        //         child: Card(
        //           elevation: 5,
        //           child: Row(
        //             children: [
        //               SizedBox(
        //                 width: Common.displayWidth(context) * 0.08,
        //               ),
        //               CircleAvatar(
        //                   foregroundColor: Color.fromRGBO(0, 172, 155, 1),
        //                   radius: 8,
        //                   backgroundColor: Color.fromRGBO(100, 170, 154, 1)),
        //               SizedBox(
        //                 width: Common.displayWidth(context) * 0.02,
        //               ),
        //               CircleAvatar(
        //                 radius: 8,
        //                 backgroundColor: Color.fromRGBO(40, 172, 155, 1),
        //               ),
        //               SizedBox(
        //                 width: Common.displayWidth(context) * 0.02,
        //               ),
        //               CircleAvatar(
        //                 radius: 9,
        //                 backgroundColor: Color.fromRGBO(0, 172, 155, 1),
        //               ),
        //               SizedBox(
        //                 width: Common.displayWidth(context) * 0.08,
        //               ),
        //               Text(
        //                 'Chlamydia',
        //                 style: TextStyle(
        //                     fontSize: 21,
        //                     fontWeight: FontWeight.normal,
        //                     color: Color.fromRGBO(0, 0, 0, 1)),
        //               ),
        //             ],
        //           ),
        //         ),
        //       ),
        //       SizedBox(
        //         height: Common.displayHeight(context) * 0.01,
        //       ),
        //       SizedBox(
        //         height: Common.displayHeight(context) * 0.15,
        //         child: Card(
        //           elevation: 5,
        //           child: Row(
        //             children: [
        //               SizedBox(
        //                 width: Common.displayWidth(context) * 0.08,
        //               ),
        //               CircleAvatar(
        //                   foregroundColor: Color.fromRGBO(0, 172, 155, 1),
        //                   radius: 8,
        //                   backgroundColor: Color.fromRGBO(100, 170, 154, 1)),
        //               SizedBox(
        //                 width: Common.displayWidth(context) * 0.02,
        //               ),
        //               CircleAvatar(
        //                 radius: 8,
        //                 backgroundColor: Color.fromRGBO(40, 172, 155, 1),
        //               ),
        //               SizedBox(
        //                 width: Common.displayWidth(context) * 0.02,
        //               ),
        //               CircleAvatar(
        //                 radius: 9,
        //                 backgroundColor: Color.fromRGBO(0, 172, 155, 1),
        //               ),
        //               SizedBox(
        //                 width: Common.displayWidth(context) * 0.08,
        //               ),
        //               Text(
        //                 'Gonorrhea',
        //                 style: TextStyle(
        //                     fontSize: 21,
        //                     fontWeight: FontWeight.normal,
        //                     color: Color.fromRGBO(0, 0, 0, 1)),
        //               ),
        //               SizedBox(
        //                 width: Common.displayWidth(context) * 0.08,
        //               ),
        //               Text('11/01/2021')
        //             ],
        //           ),-------
        //         ),
        //       ),
        //       SizedBox(
        //         height: Common.displayHeight(context) * 0.15,
        //         child: Card(
        //           elevation: 5,
        //           child: Row(
        //             children: [
        //               SizedBox(
        //                 width: Common.displayWidth(context) * 0.08,
        //               ),
        //               CircleAvatar(
        //                   foregroundColor: Color.fromRGBO(0, 172, 155, 1),
        //                   radius: 8,
        //                   backgroundColor: Color.fromRGBO(100, 170, 154, 1)),
        //               SizedBox(
        //                 width: Common.displayWidth(context) * 0.02,
        //               ),
        //               CircleAvatar(
        //                 radius: 8,
        //                 backgroundColor: Color.fromRGBO(40, 172, 155, 1),
        //               ),
        //               SizedBox(
        //                 width: Common.displayWidth(context) * 0.02,
        //               ),
        //               CircleAvatar(
        //                 radius: 9,
        //                 backgroundColor: Color.fromRGBO(0, 172, 155, 1),
        //               ),
        //               SizedBox(
        //                 width: Common.displayWidth(context) * 0.08,
        //               ),
        //               Text(
        //                 'Syphilis',
        //                 style: TextStyle(
        //                     fontSize: 21,
        //                     fontWeight: FontWeight.normal,
        //                     color: Color.fromRGBO(0, 0, 0, 1)),
        //               ),
        //               SizedBox(
        //                 width: Common.displayWidth(context) * 0.08,
        //               ),
        //               Text('11/01/2021')
        //             ],
        //           ),
        //         ),
        //       ),
        //       SizedBox(
        //         height: Common.displayHeight(context) * 0.15,
        //         child: Card(
        //           elevation: 5,
        //           child: Row(
        //             children: [
        //               SizedBox(
        //                 width: Common.displayWidth(context) * 0.08,
        //               ),
        //               CircleAvatar(
        //                   foregroundColor: Color.fromRGBO(0, 172, 155, 1),
        //                   radius: 8,
        //                   backgroundColor: Color.fromRGBO(100, 170, 154, 1)),
        //               SizedBox(
        //                 width: Common.displayWidth(context) * 0.02,
        //               ),
        //               CircleAvatar(
        //                 radius: 8,
        //                 backgroundColor: Color.fromRGBO(40, 172, 155, 1),
        //               ),
        //               SizedBox(
        //                 width: Common.displayWidth(context) * 0.02,
        //               ),
        //               CircleAvatar(
        //                 radius: 9,
        //                 backgroundColor: Color.fromRGBO(0, 172, 155, 1),
        //               ),
        //               SizedBox(
        //                 width: Common.displayWidth(context) * 0.08,
        //               ),
        //               Text(
        //                 'HIV',
        //                 style: TextStyle(
        //                     fontSize: 21,
        //                     fontWeight: FontWeight.normal,
        //                     color: Color.fromRGBO(0, 0, 0, 1)),
        //               ),
        //               SizedBox(
        //                 width: Common.displayWidth(context) * 0.08,
        //               ),
        //               Text('11/01/2021')
        //             ],
        //           ),
        //         ),
        //       ),
        //       SizedBox(
        //         height: Common.displayHeight(context) * 0.15,
        //         child: Card(
        //           elevation: 5,
        //           child: Row(
        //             children: [
        //               SizedBox(
        //                 width: Common.displayWidth(context) * 0.08,
        //               ),
        //               CircleAvatar(
        //                   foregroundColor: Color.fromRGBO(0, 172, 155, 1),
        //                   radius: 8,
        //                   backgroundColor: Color.fromRGBO(100, 170, 154, 1)),
        //               SizedBox(
        //                 width: Common.displayWidth(context) * 0.02,
        //               ),
        //               CircleAvatar(
        //                 radius: 8,
        //                 backgroundColor: Color.fromRGBO(40, 172, 155, 1),
        //               ),
        //               SizedBox(
        //                 width: Common.displayWidth(context) * 0.02,
        //               ),
        //               CircleAvatar(
        //                 radius: 9,
        //                 backgroundColor: Color.fromRGBO(0, 172, 155, 1),
        //               ),
        //               SizedBox(
        //                 width: Common.displayWidth(context) * 0.08,
        //               ),
        //               Text(
        //                 'Hepatitis B',
        //                 style: TextStyle(
        //                     fontSize: 21,
        //                     fontWeight: FontWeight.normal,
        //                     color: Color.fromRGBO(0, 0, 0, 1)),
        //               ),
        //               SizedBox(
        //                 width: Common.displayWidth(context) * 0.08,
        //               ),
        //               Text('11/01/2021')
        //             ],
        //           ),
        //         ),
        //       ),
        //       SizedBox(
        //         height: Common.displayHeight(context) * 0.15,
        //         child: Card(
        //           elevation: 5,
        //           child: Row(
        //             children: [
        //               SizedBox(
        //                 width: Common.displayWidth(context) * 0.08,
        //               ),
        //               CircleAvatar(
        //                   foregroundColor: Color.fromRGBO(0, 172, 155, 1),
        //                   radius: 8,
        //                   backgroundColor: Color.fromRGBO(100, 170, 154, 1)),
        //               SizedBox(
        //                 width: Common.displayWidth(context) * 0.02,
        //               ),
        //               CircleAvatar(
        //                 radius: 8,
        //                 backgroundColor: Color.fromRGBO(40, 172, 155, 1),
        //               ),
        //               SizedBox(
        //                 width: Common.displayWidth(context) * 0.02,
        //               ),
        //               CircleAvatar(
        //                 radius: 9,
        //                 backgroundColor: Color.fromRGBO(0, 172, 155, 1),
        //               ),
        //               SizedBox(
        //                 width: Common.displayWidth(context) * 0.08,
        //               ),
        //               Text(
        //                 DummyData.stdname[1],
        //                 style: TextStyle(
        //                     fontSize: 21,
        //                     fontWeight: FontWeight.normal,
        //                     color: Color.fromRGBO(0, 0, 0, 1)),
        //               ),
        //               SizedBox(
        //                 width: Common.displayWidth(context) * 0.08,
        //               ),
        //               Text('11/01/2021')
        //             ],
        //           ),
        //         ),
        //       ),
        //       SizedBox(
        //         height: Common.displayHeight(context) * 0.15,
        //         child: Card(
        //           elevation: 5,
        //           child: Row(
        //             children: [
        //               SizedBox(
        //                 width: Common.displayWidth(context) * 0.08,
        //               ),
        //               CircleAvatar(
        //                   foregroundColor: Color.fromRGBO(0, 172, 155, 1),
        //                   radius: 8,
        //                   backgroundColor: Color.fromRGBO(100, 170, 154, 1)),
        //               SizedBox(
        //                 width: Common.displayWidth(context) * 0.02,
        //               ),
        //               CircleAvatar(
        //                 radius: 8,
        //                 backgroundColor: Color.fromRGBO(40, 172, 155, 1),
        //               ),
        //               SizedBox(
        //                 width: Common.displayWidth(context) * 0.02,
        //               ),
        //               CircleAvatar(
        //                 radius: 9,
        //                 backgroundColor: Color.fromRGBO(0, 172, 155, 1),
        //               ),
        //               SizedBox(
        //                 width: Common.displayWidth(context) * 0.08,
        //               ),
        //               Text(
        //                 'Genital Herpes',
        //                 style: TextStyle(
        //                     fontSize: 21,
        //                     fontWeight: FontWeight.normal,
        //                     color: Color.fromRGBO(0, 0, 0, 1)),
        //               ),
        //               SizedBox(
        //                 width: Common.displayWidth(context) * 0.08,
        //               ),
        //               Text('11/01/2021')
        //             ],
        //           ),
        //         ),
        //       ),
        //       SizedBox(
        //         height: Common.displayHeight(context) * 0.15,
        //         child: Card(
        //           elevation: 5,
        //           child: Row(
        //             children: [
        //               SizedBox(
        //                 width: Common.displayWidth(context) * 0.08,
        //               ),
        //               CircleAvatar(
        //                   foregroundColor: Color.fromRGBO(0, 172, 155, 1),
        //                   radius: 8,
        //                   backgroundColor: Color.fromRGBO(100, 170, 154, 1)),
        //               SizedBox(
        //                 width: Common.displayWidth(context) * 0.02,
        //               ),
        //               CircleAvatar(
        //                 radius: 8,
        //                 backgroundColor: Color.fromRGBO(40, 172, 155, 1),
        //               ),
        //               SizedBox(
        //                 width: Common.displayWidth(context) * 0.02,
        //               ),
        //               CircleAvatar(
        //                 radius: 9,
        //                 backgroundColor: Color.fromRGBO(0, 172, 155, 1),
        //               ),
        //               SizedBox(
        //                 width: Common.displayWidth(context) * 0.08,
        //               ),
        //               Text(
        //                 'Chlamydia',
        //                 style: TextStyle(
        //                     fontSize: 21,
        //                     fontWeight: FontWeight.normal,
        //                     color: Color.fromRGBO(0, 0, 0, 1)),
        //               ),
        //             ],
        //           ),
        //         ),
        //       ),
        //
        //       // ListTile(
        //       //   subtitle: Row(
        //       //     children: [
        //       //       Card(
        //       //         elevation: 4.0,
        //       //         child: Padding(
        //       //           padding: const EdgeInsets.only(left: 80,right: 100,top: 40,bottom: 40),
        //       //           child: Row(
        //       //             children: [
        //       //               SizedBox(
        //       //                 width: Common.displayWidth(context) * 0.0111,
        //       //               ),
        //       //               CircleAvatar(
        //       //                   foregroundColor: Color.fromRGBO(0, 172, 155, 1),
        //       //                   radius: 8,
        //       //                   backgroundColor:
        //       //                   Color.fromRGBO(100, 170, 154, 1)),
        //       //               SizedBox(
        //       //                 width: Common.displayWidth(context) * 0.02,
        //       //               ),
        //       //               CircleAvatar(
        //       //                 radius: 8,
        //       //                 backgroundColor: Color.fromRGBO(40, 172, 155, 1),
        //       //               ),
        //       //               SizedBox(
        //       //                 width: Common.displayWidth(context) * 0.02,
        //       //               ),
        //       //               CircleAvatar(
        //       //                 radius: 9,
        //       //                 backgroundColor: Color.fromRGBO(0, 172, 155, 1),
        //       //               ),
        //       //               SizedBox(
        //       //                 width: Common.displayWidth(context) * 0.02,
        //       //               ),
        //       //               Text(
        //       //                 'Chlamydia',
        //       //                 style: TextStyle(
        //       //                     fontSize: 21,
        //       //                     fontWeight: FontWeight.normal,
        //       //                     color: Color.fromRGBO(0, 0, 0, 1)),
        //       //               ),
        //       //             ],
        //       //           ),
        //       //         ),
        //       //       ),
        //       //
        //       //     ],
        //       //   ),
        //       // )
        //     ],
        //   ),
        // ),
        );
  }
}
