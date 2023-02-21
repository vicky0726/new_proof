import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proof_app/common/common.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {


  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text(
          "NOTIFICATIONS",
          style: TextStyle(fontSize: 22,fontFamily: 'futura-pt-book',fontWeight: FontWeight.w600, color: Color.fromRGBO(0, 172, 155, 1)),
        ),
        // foregroundColor: Colors.black,
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
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CupertinoSwitch(
              // This bool value toggles the switch.
              value: switchValue,
              activeColor: Color.fromRGBO(0, 172, 155, 1),
              onChanged: (bool? value) {
                // This is called when the user toggles the switch.
                setState(() {
                  switchValue = value ?? false;
                });
              },
            ),
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: 6,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
                title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Person Name', style: TextStyle(fontSize: 14,color: Color.fromRGBO(0, 0, 0, 1))),
                          SizedBox(
                            height: _mediaQuery.size.height * 0.02,
                          ),
                          Text(
                              'Lorem Ipsum is simply dummy text of the \nprinting and typesetting industry.',
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 12,color: Color.fromRGBO(152, 152, 152, 1)))
                        ],
                      ),
                    ),

                    Column(
                      children: [
                        Text(
                          '3m',
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height: Common.displayHeight(context) * 0.02,
                        ),
                        Icon(Icons.delete_sweep,color: Color.fromRGBO(0, 0, 0, 1),),
                      ],
                    )
                  ],
                ),
              ],
            )),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            thickness: 1,
            color: Colors.grey,
          );
        },
      ),
    );
  }
}
