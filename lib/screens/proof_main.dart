import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proof_app/screens/Friends_view.dart';
import 'package:proof_app/screens/map_view.dart';
import 'package:proof_app/screens/message_view.dart';
import 'package:proof_app/screens/person_view.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class ProofMain extends StatefulWidget {
  const ProofMain({Key? key,required this.title}) : super(key: key);

  final String title;


  @override
  State<ProofMain> createState() => _ProofMainState();
}

class _ProofMainState extends State<ProofMain> {
  bool? _isCheck1 = false;
  bool? _isCheck2 = false;
  bool? _isCheck3 = false;
  bool switchValue = true;

  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = [ Map_View(), Friends_View(),Message_View(),PersonView()];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }



  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    var screenWidth = MediaQuery.of(context).size.width;
    var iconSize = screenWidth / 13;
    var selectedValue;
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(fontSize: 0),
        unselectedLabelStyle: TextStyle(fontSize: 0),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/Maps.png'),
              // color: Color.fromRGBO(8, 174, 158, 1),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/Friends.png'),
              // color: Color.fromRGBO(8, 174, 158, 1),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/Message.png'),
              // color: Color.fromRGBO(8, 174, 158, 1),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/Proofperson.png'),
              // color: Color.fromRGBO(8, 174, 158, 1),
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        iconSize: iconSize,
        unselectedItemColor: Color.fromRGBO(190, 179, 179, 1),
        selectedItemColor: Color.fromRGBO(8, 174, 158, 1),
      ),
      // body: SlidingUpPanel(
      //   body: Center(
      //     child: Padding(
      //       padding: const EdgeInsets.only(bottom: 310),
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [Image(image: AssetImage('assets/Map.png'))],
      //       ),
      //     ),
      //   ),
      //   minHeight: 130,
      //   maxHeight: MediaQuery.of(context).size.height / 1.5,
      //   borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      //   color: Color.fromRGBO(8, 174, 158, 1),
      //   panel: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       SizedBox(
      //         height: mediaQueryData.size.height * 0.01,
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.only(left: 10, top: 10, right: 60),
      //         child: ListTile(
      //           leading: CircleAvatar(
      //             backgroundColor: Color.fromRGBO(252, 158, 158, 1),
      //             backgroundImage: AssetImage('assets/Place.png'),
      //             radius: 40,
      //           ),
      //           title: Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               Text(
      //                 'Place Name',
      //                 style: TextStyle(
      //                     fontSize: 16,
      //                     color: Color.fromRGBO(255, 255, 255, 1)),
      //               ),
      //               Padding(
      //                 padding: const EdgeInsets.only(
      //                   left: 130,
      //                 ),
      //                 child: Row(
      //                   children: [Text('     4.5')],
      //                 ),
      //               ),
      //               Text('Restaurant',
      //                   style: TextStyle(
      //                       fontSize: 13,
      //                       color: Color.fromRGBO(255, 255, 255, 1))),
      //               SizedBox(
      //                 height: 10,
      //               ),
      //               Text(
      //                 'Open',
      //                 style: TextStyle(
      //                     fontSize: 13, color: Color.fromRGBO(103, 255, 75, 1)),
      //               ),
      //             ],
      //           ),
      //           trailing: SizedBox(
      //               width: 20,
      //               child: Image(image: AssetImage('assets/Stars.png'))),
      //           // trailing: Padding(
      //           //   padding: const EdgeInsets.only(left: 10, top: 15),
      //           //   child: Text('4.5',
      //           //       style: TextStyle(
      //           //           fontSize: 16,
      //           //           color: Color.fromRGBO(255, 255, 255, 1))),
      //           // ),
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.only(top: 20, left: 35),
      //         child: Row(
      //           children: [
      //             Image(image: AssetImage('assets/Clock.png')),
      //             SizedBox(
      //               width: 15,
      //             ),
      //             Text('11:00am - 10:00 pm')
      //           ],
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.only(top: 20, left: 35),
      //         child: Row(
      //           children: [
      //             Image(image: AssetImage('assets/Arrow.png')),
      //             SizedBox(
      //               width: 15,
      //             ),
      //             Text('1234 Street Name, Atlanta, GA')
      //           ],
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.only(top: 20, left: 35),
      //         child: Row(
      //           children: [
      //             Image(image: AssetImage('assets/Phone.png')),
      //             SizedBox(
      //               width: 15,
      //             ),
      //             Text('123-131-2311'),
      //             SizedBox(
      //               width: 20,
      //             ),
      //             Row(
      //               children: [
      //                 Image(image: AssetImage('assets/Globel.png')),
      //                 SizedBox(
      //                   width: 15,
      //                 ),
      //                 Text('www.place.com')
      //               ],
      //             ),
      //           ],
      //         ),
      //       ),
      //       SizedBox(
      //         height: 10,
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.only(top: 10, left: 35),
      //         child: Row(
      //           children: [
      //             Text(
      //               'REVIEWS',
      //               style: TextStyle(
      //                   fontSize: 16, color: Color.fromRGBO(255, 255, 255, 1)),
      //             ),
      //             SizedBox(
      //               width: 210,
      //             ),
      //             Text(
      //               'Leave a Review +',
      //               style: TextStyle(
      //                   fontSize: 11, color: Color.fromRGBO(54, 248, 61, 1)),
      //             ),
      //           ],
      //         ),
      //       ),
      //       SizedBox(
      //         height: 2,
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.only(top: 3, left: 35),
      //         child: Row(
      //           children: [
      //             Container(
      //               child: Padding(
      //                 padding: const EdgeInsets.only(bottom: 15, top: 10),
      //                 child: ListTile(
      //                   trailing: Text('2m ago'),
      //                   subtitle:
      //                       SizedBox(height: 30, child: Text('Persons Name')),
      //                   leading: CircleAvatar(
      //                     backgroundColor: Color.fromRGBO(252, 158, 158, 1),
      //                     backgroundImage: AssetImage('assets/Place.png'),
      //                     radius: 15,
      //                   ),
      //                 ),
      //               ),
      //               decoration: const BoxDecoration(
      //                   borderRadius: BorderRadius.all(Radius.circular(10)),
      //                   color: Color.fromRGBO(35, 128, 109, 1)),
      //               height: 125,
      //               width: 355,
      //               // color: Color.fromRGBO(35, 128, 109, 1)
      //             ),
      //           ],
      //         ),
      //       ),
      //       SizedBox(
      //         height: 5,
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.only(top: 5, left: 35),
      //         child: Row(
      //           children: [
      //             Container(
      //               child: Padding(
      //                 padding: const EdgeInsets.only(bottom: 15, top: 10),
      //                 child: ListTile(
      //                   trailing: Text('2m ago'),
      //                   subtitle:
      //                       SizedBox(height: 30, child: Text('Persons Name')),
      //                   leading: CircleAvatar(
      //                     backgroundColor: Color.fromRGBO(252, 158, 158, 1),
      //                     backgroundImage: AssetImage('assets/Place.png'),
      //                     radius: 15,
      //                   ),
      //                 ),
      //               ),
      //               decoration: const BoxDecoration(
      //                   borderRadius: BorderRadius.all(Radius.circular(10)),
      //                   color: Color.fromRGBO(35, 128, 109, 1)),
      //               height: 125,
      //               width: 355,
      //               // color: Color.fromRGBO(35, 128, 109, 1)
      //             ),
      //           ],
      //         ),
      //       ),
      //     ],
      //   ),
      //   // collapsed: Container(
      //   //     child: Container(
      //   //       height: 90,
      //   //       child: Column(
      //   //         mainAxisAlignment: MainAxisAlignment.end,
      //   //       ),
      //   //     )
      //   // ),
      // // ),
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   selectedLabelStyle: TextStyle(fontSize: 0),
      //   unselectedLabelStyle: TextStyle(fontSize: 0),
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: ImageIcon(
      //         AssetImage('assets/Maps.png'),
      //         // color: Color.fromRGBO(8, 174, 158, 1),
      //       ),
      //       label: '',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: ImageIcon(
      //         AssetImage('assets/Friends.png'),
      //         // color: Color.fromRGBO(8, 174, 158, 1),
      //       ),
      //       label: '',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: ImageIcon(
      //         AssetImage('assets/Message.png'),
      //         // color: Color.fromRGBO(8, 174, 158, 1),
      //       ),
      //       label: '',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: ImageIcon(
      //         AssetImage('assets/Proofperson.png'),
      //         // color: Color.fromRGBO(8, 174, 158, 1),
      //       ),
      //       label: '',
      //     ),
      //   ],
      //   currentIndex: _selectedIndex,
      //   onTap: _onItemTapped,
      //   iconSize: iconSize,
      //   unselectedItemColor: Color.fromRGBO(190, 179, 179, 1),
      //   selectedItemColor: Color.fromRGBO(8, 174, 158, 1),
      // ),
    );
  }
}
