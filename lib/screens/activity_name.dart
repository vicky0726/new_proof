import 'package:flutter/material.dart';
import 'package:proof_app/common/common.dart';
import 'package:proof_app/screens/std_verification.dart';
import 'package:proof_app/widgets/custom_elevated_button.dart';

class ActivityName extends StatefulWidget {
  const ActivityName({Key? key}) : super(key: key);

  @override
  State<ActivityName> createState() => _ActivityNameState();
}

class _ActivityNameState extends State<ActivityName> {
  bool isClicked1 = false;
  bool isClicked2 = false;
  bool isClicked3 = false;
  bool isClicked4 = false;


  // @override
  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance.addPostFrameCallback((_) {
  //     setState(() {
  //       findname.addAll(DummyData2.activityname);
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'What are you Interested In',
                style: TextStyle(
                    // color: AppColors.greenchat,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'futura-pt-book',
                    fontSize: 26),
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.02,
              ),
              SizedBox(
                width: Common.displayWidth(context) * 0.8,
                child: const Center(
                  child: Text(
                    "Select all the Activites that you are Interested in",
                    style: TextStyle(
                        // color: AppColors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        fontFamily: "basicsanssf"),
                  ),
                ),
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.05,
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.6,
                width: Common.displayWidth(context) * 0.9,
                child: GridView.builder(
                  itemCount: 16,
                  shrinkWrap: true,
                  gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 3,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      semanticContainer: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: BorderSide(
                          color: Color.fromARGB(255, 186, 184, 184),
                          width: 2,
                        ),
                      ),
                      elevation: 1,
                      child: const Center(
                        child: Text(
                          'Activity Name',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'futura-pt-book',
                              fontSize: 19,
                              fontWeight: FontWeight
                                  .w600), //just for testing, will fill with image later
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.03,
              ),
              CustomElevatedButton(onPressed: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (context)=> StdVerification()));
              }, text: 'CONTINUE')
            ],
          ),
        ),
      ),
    );
    // var _mediaQuery = MediaQuery.of(context);
    // return Scaffold(
    //   appBar: AppBar(
    //     elevation: 0,
    //     backgroundColor: Colors.transparent,
    //     leading: GestureDetector(
    //       onTap: () {
    //         Navigator.of(context).pop();
    //       },
    //       child: Icon(
    //         Icons.arrow_back_ios,
    //         color: Colors.black,
    //       ),
    //     ),
    //   ),
    //   body:   Container(
    //
    //     child: GridView.builder(
    //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    // itemCount: 10,
    //         itemBuilder: (context,index){
    //       return Container(
    //         alignment: Alignment.center,
    //             decoration: BoxDecoration(
    //               color: Colors.amber,
    //                       borderRadius: BorderRadius.circular(15)
    //             ),
    //       child: Text(''),
    //       );
    // }
    // gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
    //     maxCrossAxisExtent: 200,
    //     childAspectRatio: 3 / 2,
    //     crossAxisSpacing: 20,
    //     mainAxisSpacing: 20),
    // itemCount: 5,
    // itemBuilder: (BuildContext context, index){
    //   return Container(color: Colors.From(255, 255, 255, 1),
    //     alignment: Alignment.center,
    //     decoration: BoxDecoration(
    //         color: Colors.amber,
    //         borderRadius: BorderRadius.circular(15)),
    //     child: Text(findname[index].name),
    //   );

    // return  Padding(
    //   padding: const EdgeInsets.only(left: 10,right: 10, top: 10),
    //   child: ListTile(
    //     contentPadding: EdgeInsets.zero,
    //     title: Text(
    //       findnameData[index].name,
    //       style:
    //       TextStyle(fontSize: 21, color: Colors.black, fontWeight: FontWeight.bold),
    //     ),
    //     // subtitle: Text(findnameData[index].tegs,),
    //     // Text('Sports , Fashion, Games'),
    //     textColor: Color.fromRGBO(0, 0, 0, 1),
    //     // trailing: ,
    //   ),
    // );

    //     ),
    //   )
    //
    //     // ),
    //   // ),
    // );
  }
}
