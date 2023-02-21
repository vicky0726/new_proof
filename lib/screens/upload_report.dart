import 'package:flutter/material.dart';
import 'package:proof_app/screens/std_verification.dart';
import 'package:proof_app/widgets/custom_elevated_button.dart';

class UploadReport extends StatefulWidget {
  const UploadReport({Key? key}) : super(key: key);

  @override
  State<UploadReport> createState() => _UploadReportState();
}

class _UploadReportState extends State<UploadReport> {
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Upload Report',
          style: TextStyle(fontSize: 28, color: Color.fromRGBO(0, 172, 155, 1)),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => StdVerification()),
            );
          },
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(
          left: _mediaQuery.size.width * 0.01,
          right: _mediaQuery.size.width * 0.01,
          top: _mediaQuery.size.height * 0.01,
          // bottom: _mediaQuery.size.height * 0.1
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 100,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  SizedBox(
                      height: 160,
                      child: Image(image: AssetImage('assets/Detail.png'))),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 100,
                    ),
                    child: Image(image: AssetImage('assets/pluscircle.png')),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Upload Documents',
              style: TextStyle(
                  fontSize: 21, color: Color.fromRGBO(153, 153, 153, 1)),
            ),
            SizedBox(
              height: 90,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 70,
                    width: 60,
                    child: CircleAvatar(
                      child: Text(
                        'Planned Parenthood',
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      backgroundColor: Color.fromRGBO(0, 172, 155, 1),
                      // backgroundImage: NetworkImage('https://example.com/image1.jpg'),
                      radius: 40,
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    height: 70,
                    width: 60,
                    child: CircleAvatar(
                      child: Text(
                        'Quest Diagnostics',
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      backgroundColor: Color.fromRGBO(0, 172, 155, 1),
                      // backgroundImage: NetworkImage('https://example.com/image1.jpg'),
                      radius: 40,
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    height: 70,
                    width: 60,
                    child: CircleAvatar(
                      child: Text(
                        'Lab \nCorp',
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      backgroundColor: Color.fromRGBO(0, 172, 155, 1),
                      // backgroundImage: NetworkImage('https://example.com/image1.jpg'),
                      radius: 40,
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    height: 70,
                    width: 60,
                    child: CircleAvatar(
                      child: Text(
                        'Others',
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      backgroundColor: Color.fromRGBO(0, 172, 155, 1),
                      // backgroundImage: NetworkImage('https://example.com/image1.jpg'),
                      radius: 40,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
                height: 60,
                width: 380,
                child: CustomElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => StdVerification()));
                    },
                    text: 'CONTINUE'))
          ],
        ),
      ),
    );
  }
}
