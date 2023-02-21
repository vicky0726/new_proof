import 'package:flutter/material.dart';
import 'package:proof_app/screens/settings_page.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
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
          'ABOUT',
          style: TextStyle(fontSize: 24, color: Color.fromRGBO(0, 172, 155, 1)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                height: 80,
                width: 200,
                child: Image(image: AssetImage('assets/Mark.png'))),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                  textAlign: TextAlign.center,
                  'Lorem ipsum dolor sit amet, consectetur adipiscing \n elit, sed do eiusmod tempor incididunt ut labore et \n dolore magna aliqua. Bibendum est ultricies integer \n quis. Iaculis urna id volutpat lacus laoreet. Mauris \n vitae ultricies leo integer malesuada. Ac odio tempor \n orci dapibus ultrices in. Egestas diam in arcu cursus \n euismod. Dictum fusce ut placerat orci nulla. Tincidunt \n ornare massa eget egestas purus viverra accumsan in \nnisl. Tempor id eu nisl nunc mi ipsum faucibus. Fusce \nid velit ut tortor pretium. Massa ultricies mi quis \n hendrerit dolor magna eget. Nullam eget felis eget \n nunc lobortis. Faucibus ornare suspendisse sed nisi.\n Sagittis eu volutpat odio facilisis mauris sit amet \nmassa. Erat velit scelerisque in dictum non consectetur \na erat. Amet nulla facilisi morbi tempus iaculis urna. \nEgestas purus viverra accumsan in nisl. Feugiat in ante \n metus dictum at tempor commodo. Convallis tellus id \ninterdum velit laoreet. Proin sagittis nisl rhoncus mattis \nrhoncus urna neque viverra. Viverra aliquet eget sit \namet tellus cras adipiscing enim eu. Ut faucibus \npulvinar elementum integer enim neque volutpat ac \ntincidunt. Dui faucibus in ornare quam. In iaculis nunc \nsed augue lacus viverra vitae congue. Vitae tempus \nquam pellentesque nec nam aliquam sem et. Ut morbi \ntincidunt augue interdum. Sem fringilla ut morbi \ntincidunt augue. Morbi enim nunc faucibus a \npellentesque sit amet porttitor eget. In est ante in nibh \nmauris. Nam aliquam sem et tortor consequat id \nporta nibh. Diam quis enim lobortis scelerisque \nfermentum dui faucibus. Non curabitur gravida arcu ac. \nMagna fringilla urna porttitor rhoncus dolor. \nAenean et tortor at risus viverra adipiscing. Dignissim \nsodales ut eu sem. Quam quisque id diam \nvel quam elementum pulvinar etiam non. Eleifend quam'),
            ),
            // Center(
            //     child: Column(
            //   children: [
            //     Text(
            //         textAlign: TextAlign.center,
            //         'Lorem ipsum dolor sit amet, consectetur adipiscing \n elit, sed do eiusmod tempor incididunt ut labore et \n dolore magna aliqua. Bibendum est ultricies integer \n quis. Iaculis urna id volutpat lacus laoreet. Mauris \n vitae ultricies leo integer malesuada. Ac odio tempor \n orci dapibus ultrices in. Egestas diam in arcu cursus \n euismod. Dictum fusce ut placerat orci nulla. Tincidunt \n ornare massa eget egestas purus viverra accumsan in \nnisl. Tempor id eu nisl nunc mi ipsum faucibus. Fusce \nid velit ut tortor pretium. Massa ultricies mi quis \n hendrerit dolor magna eget. Nullam eget felis eget \n nunc lobortis. Faucibus ornare suspendisse sed nisi.\n Sagittis eu volutpat odio facilisis mauris sit amet \nmassa. Erat velit scelerisque in dictum non consectetur \na erat. Amet nulla facilisi morbi tempus iaculis urna. \nEgestas purus viverra accumsan in nisl. Feugiat in ante \n metus dictum at tempor commodo. Convallis tellus id \ninterdum velit laoreet. Proin sagittis nisl rhoncus mattis \nrhoncus urna neque viverra. Viverra aliquet eget sit \namet tellus cras adipiscing enim eu. Ut faucibus \npulvinar elementum integer enim neque volutpat ac \ntincidunt. Dui faucibus in ornare quam. In iaculis nunc \nsed augue lacus viverra vitae congue. Vitae tempus \nquam pellentesque nec nam aliquam sem et. Ut morbi \ntincidunt augue interdum. Sem fringilla ut morbi \ntincidunt augue. Morbi enim nunc faucibus a \npellentesque sit amet porttitor eget. In est ante in nibh \nmauris. Nam aliquam sem et tortor consequat id \nporta nibh. Diam quis enim lobortis scelerisque \nfermentum dui faucibus. Non curabitur gravida arcu ac. \nMagna fringilla urna porttitor rhoncus dolor. \nAenean et tortor at risus viverra adipiscing. Dignissim \nsodales ut eu sem. Quam quisque id diam \nvel quam elementum pulvinar etiam non. Eleifend quam'),
            //   ],
            // )
            // )
          ],
        ),
      ),
    );
  }
}
