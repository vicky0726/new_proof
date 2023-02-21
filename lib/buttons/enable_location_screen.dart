import 'package:flutter/material.dart';
import 'package:proof_app/common/common.dart';
import 'package:proof_app/screens/proof_main.dart';
class EnableLocation extends StatefulWidget {
  const EnableLocation({Key? key}) : super(key: key);

  @override
  State<EnableLocation> createState() => _EnableLocationState();
}

class _EnableLocationState extends State<EnableLocation> {
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Container(
      width: _mediaQuery.size.width * 1,
      height: _mediaQuery.size.height * 1,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Image(image: AssetImage('assets/Mask.png'),height: Common.displayHeight(context) * 0.2,
          ),
          SizedBox(
            height: 40,
          ),Center(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              elevation: 50,
              shadowColor: Colors.black,
              color: Color.fromRGBO(255, 255, 255, 1),
              child: SizedBox(
                width: 300,
                height: 380,
                child: Padding(padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text('Enable Location',style: TextStyle(
                          color: Color.fromRGBO(
                            103,
                            101,
                            113,
                            1,
                          ),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Image(
                        image: AssetImage('assets/location.png'),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        ' We need to know your location in \norder to provide a better experience.',
                        style: TextStyle(fontSize: 15),
                      ),
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: 230,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100.0)),
                          backgroundColor: Color.fromRGBO(0, 172, 155, 1),
                        ),
                        child: Text(
                          'Allow',
                          style:
                          TextStyle(color: Colors.white, fontSize: 19),
                        ),
                    ),
                  ),
                      SizedBox(
                        height: 20,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    ProofMain(title: 'title'))
                            ); // Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ))
                          },
                          child: Text(
                            'Don"t Allow',
                            style: TextStyle(
                                color: Color.fromRGBO(119, 134, 155, 1)),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
