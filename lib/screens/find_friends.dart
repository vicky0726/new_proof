import 'package:flutter/material.dart';
import 'package:proof_app/common/common.dart';
import 'package:proof_app/models/Dummy_data.dart';
import 'package:proof_app/screens/activity_name.dart';
import 'package:proof_app/screens/create_profile_screen.dart';
import 'package:proof_app/widgets/custom_elevated_button.dart';

class FindFriends extends StatefulWidget {
  const FindFriends({Key? key}) : super(key: key);

  @override
  State<FindFriends> createState() => _FindFriendsState();
}

class _FindFriendsState extends State<FindFriends> {
  bool? _isChecked1 = false;
  bool? _isChecked2 = false;
  bool? _isChecked3 = false;
  bool? _isChecked4 = false;



  List<FriendNames> findnameData = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        findnameData.addAll(DummyData1.friendname);
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          Row(
            children: [
              Image(image: AssetImage('assets/MaskGroup.png')),
              SizedBox(
                width: 145,
              ),
              Image(image: AssetImage('assets/Search.png')),
              SizedBox(
                width: 20,
              ),
              Image(image: AssetImage('assets/Share.png')),
              SizedBox(
                width: 20,
              )
            ],
          ),
        ],
      ),

      body:  Padding(
        padding: const EdgeInsets.only(bottom: 10,top: 20),
        child: ListView.builder(
            itemCount: findnameData.length,
            itemBuilder: (BuildContext context, index){
              return  Padding(
                padding: const EdgeInsets.only(left: 10,right: 10, top: 10),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(
                      radius: 35.0,
                      backgroundColor: Colors.yellow,
                      backgroundImage: AssetImage(findnameData[index].image,),
                      // AssetImage('assets/Avatar.png')
                  ),
                  title: Text(
                    findnameData[index].name,
                    style:
                    TextStyle(fontSize: 21, color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(findnameData[index].tegs,),
                  // Text('Sports , Fashion, Games'),
                  textColor: Color.fromRGBO(0, 0, 0, 1),
                  trailing: Checkbox(
                    activeColor: Color.fromRGBO(0, 172, 155, 1),
                    value: findnameData[index].status,
                    onChanged: (bool? value) {
                      setState(() { if
                      findnameData[index].status = value!;
                      });
                    },
                  ),
                  // trailing: ,
                ),
              );

            }
        ),
      ),

      bottomNavigationBar:  Container(
          height: 55,
          width: Common.displayWidth(context)* 0.5,
          padding: EdgeInsets.only(bottom: 12, left: 10, right: 10),
          child: CustomElevatedButton(onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ActivityName()));
          }, text: 'CONTINUE'),
      ),
    // SizedBox(
    //     height: 60,
    //     width: 380,
    //     child: CustomElevatedButton(onPressed: () {
    //       Navigator.of(context).push(
    //           MaterialPageRoute(builder: (context) => ActivityName()));
    //     }, text: 'CONTINUE'))
      // body: SingleChildScrollView(
        // child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       Center(
      //         child: Text(
      //           'Find Friends',
      //           style: TextStyle(
      //               fontSize: 28,
      //               fontWeight: FontWeight.normal,
      //               color: Color.fromRGBO(0, 172, 155, 1)),
      //         ),
      //       ),
      //       SizedBox(
      //         height: 25,
      //       ),
      //
            // ListTile(
            //   contentPadding: EdgeInsets.zero,
            //   leading: CircleAvatar(
            //       radius: 35.0,
            //       backgroundColor: Colors.yellow,
            //       backgroundImage: AssetImage('assets/Avatar.png')),
            //   title: Text('Ms. Arthur Runolfsson'),
            //   subtitle: Text('Sports , Fashion, Games'),
            //   textColor: Color.fromRGBO(0, 0, 0, 1),
            //   trailing: Checkbox(
            //     activeColor: Color.fromRGBO(0, 172, 155, 1),
            //     value: _isChecked1,
            //     onChanged: (bool? value) {
            //       setState(() {
            //         _isChecked1 = value;
            //       });
            //     },
            //   ),
            //   // trailing: ,
            // ),
            // ListTile(
            //   minVerticalPadding: 0,
            // //   contentPadding: EdgeInsets.zero,
            // //   leading: CircleAvatar(
            // //       radius: 35.0,
            // //       backgroundColor: Colors.yellow,
            // //       backgroundImage: AssetImage('assets/Man.png')),
            // //   title: Text('Rachel oehm'),
            // //   subtitle: Text('Sports , Fashion, Games'),
            // //   textColor: Color.fromRGBO(0, 0, 0, 1),
            // //   trailing: Checkbox(
            // //     activeColor: Color.fromRGBO(0, 172, 155, 1),
            // //     value: _isChecked2,
            // //     onChanged: (bool? value) {
            // //       setState(() {
            // //         _isChecked2 = value;
            // //       });
            // //     },
            // //   ),
            // // ),
            // // ListTile(
            // //   contentPadding: EdgeInsets.zero,
            // //   leading: CircleAvatar(
            // //       radius: 35.0,
            // //       backgroundColor: Colors.yellow,
            // //       backgroundImage: AssetImage('assets/Boy.png')),
            // //   title: Text('Wilma Glover'),
            // //   subtitle: Text('Sports , Fashion, Games'),
            // //   textColor: Color.fromRGBO(0, 0, 0, 1),
            // //   trailing: Checkbox(
            // //     activeColor: Color.fromRGBO(0, 172, 155, 1),
            // //     value: _isChecked3,
            // //     onChanged: (bool? value) {
            // //       setState(() {
            // //         _isChecked3 = value;
            // //       });
            // //     },
            // //   ),
            // // ),
            // // ListTile(
            // //   contentPadding: EdgeInsets.zero,
            // //   leading: CircleAvatar(
            // //       radius: 35.0,
            // //       backgroundColor: Colors.yellow,
            // //       backgroundImage: AssetImage('assets/Style.png')),
            // //   title: Text("Woodrow O'Kon"),
            // //   subtitle: Text('Sports , Fashion, Games'),
            // //   textColor: Color.fromRGBO(0, 0, 0, 1),
            // //   trailing: Checkbox(
            // //     activeColor: Color.fromRGBO(0, 172, 155, 1),
            // //     value: _isChecked4,
            // //     onChanged: (bool? value) {
            // //       setState(() {
            // //         _isChecked4 = value;
            // //       });
            // //     },
            // //   ),
            // // ),SizedBox(
            // //   height: 230,
            // // ),
            // SizedBox(
            //     height: 60,
            //     width: 380,
            //     child: CustomElevatedButton(onPressed: () {
            //       Navigator.of(context).push(
            //           MaterialPageRoute(builder: (context) => ActivityName()));
            //     }, text: 'CONTINUE'))
          // ],

        );
      // ),
      //
    // );
  }
}
