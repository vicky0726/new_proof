import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proof_app/common/common.dart';
import 'package:proof_app/widgets/custom_elevated_button.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  bool switchValue = true;
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
          'POST',
          style: TextStyle(fontSize: 24, color: Color.fromRGBO(0, 172, 155, 1)),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: Common.displayHeight(context) * 0.02,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(229, 229, 229, 1),
                ),
                height: Common.displayHeight(context) * 0.55,
                width: Common.displayWidth(context) * 0.75,
                child: Image(
                  image: AssetImage('assets/Plus.png'),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                      image: AssetImage('assets/Welcome.png'),
                      width: Common.displayWidth(context) * 0.05),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Add Image or video',
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromRGBO(0, 172, 155, 1)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.03,
              ),
              Center(
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        maxLength: 100,cursorColor: Colors.black,
                        // obscureText: hidden2,
                        cursorHeight: 20,maxLines: 5,
                        autofocus: false,
                        onTap: () {},
                        style: TextStyle(color: Colors.black),
// controller: Controller,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(229, 229, 229, 1))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(229, 229, 229, 1))),
                          fillColor: Color.fromRGBO(229, 229, 229, 1),
                          filled: true,
                          hintText: 'Type Caption',
                          counterText: '',
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 22, horizontal: 10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                            const BorderSide(color: Colors.white, width: 2),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, top: 25),
                child: Row(
                  children: [
                    Text(
                      'Save to Device',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      width: Common.displayWidth(context) * 0.40,
                    ),
                    CupertinoSwitch(value: switchValue,
                        activeColor: CupertinoColors.activeBlue,
                        onChanged:(bool? value){
                       setState(() {
                         switchValue = value ?? false;
                       });
                        }),
                    // Image(
                    //   image: AssetImage('assets/Toggle.png'),
                    // )
                  ],
                ),
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.04,
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.1,
                width: Common.displayWidth(context) * 0.93,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginButton()));
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      backgroundColor: Color.fromRGBO(152, 152, 152, 1)),
                  child: Text(
                    'Post Now',
                    style: TextStyle(color: Colors.white, fontSize: 19),
                  ),
                ),
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.04,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
