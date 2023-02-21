import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proof_app/common/common.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class Map_View extends StatefulWidget {
  const Map_View({Key? key}) : super(key: key);

  @override
  State<Map_View> createState() => _FriendsViewState();
}

class _FriendsViewState extends State<Map_View> {
  bool? _isChecked1 = false;
  bool? _isChecked2 = false;
  bool? _isChecked3 = false;

  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    var selectedValue;

    final mediaQueryData = MediaQuery.of(context);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
          automaticallyImplyLeading: false,
          toolbarHeight: Common.displayHeight(context) * 0.18,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 10, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image(image: AssetImage('assets/MaskGroup.png')),
                      SizedBox(
                        width: Common.displayWidth(context) * 0.02,
                      ),
                      StatefulBuilder(builder: (context, setState) {
                        return SizedBox(
                          height: 50,
                          child: Card(
                            elevation: 5,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: DropdownButton<String>(
                                hint: Text('My Interests'),
                                value: selectedValue,
                                items: [
                                  DropdownMenuItem(
                                    value: 'Option 1',
                                    child: Row(
                                      children: [
                                        Text('Happy Hour'),
                                        Checkbox(
                                          activeColor: Color.fromRGBO(0, 172, 155, 1),
                                          value: _isChecked1,
                                          onChanged: (bool? value) {
                                            setState(() {
                                              _isChecked1 = value;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  DropdownMenuItem(
                                    value: 'Option 2',
                                    child: Row(
                                      children: [
                                        Text('Bars'),
                                        Checkbox(
                                          activeColor: Color.fromRGBO(0, 172, 155, 1),
                                          value: _isChecked2,
                                          onChanged: (bool? value) {
                                            setState(() {
                                              _isChecked2 = value;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  DropdownMenuItem(
                                    value: 'Option 3',
                                    child: Row(
                                      children: [
                                        Text('Restaurants'),
                                        Checkbox(
                                          activeColor: Color.fromRGBO(0, 172, 155, 1),
                                          value: _isChecked3,
                                          onChanged: (bool? value) {
                                            setState(() {
                                              _isChecked3 = value;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                                onChanged: (value) {
                                  setState(() {
                                    selectedValue = value;
                                  });
                                },
                              ),
                            ),
                          ),
                        );
                      }),
                      SizedBox(
                        width: Common.displayWidth(context) * 0.02,
                      ),
                      Image(image: AssetImage('assets/Search.png'),width: 20),
                    ],
                  ),
                  SizedBox(
                    height: Common.displayHeight(context) * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Make yourself visible',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                            color: Color.fromRGBO(
                              0,
                              0,
                              0,
                              1,
                            )),
                      ),
                      SizedBox(width: Common.displayWidth(context) * 0.34),
                      CupertinoSwitch(
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
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        body: SlidingUpPanel(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage('assets/Map.png'),
                  fit: BoxFit.fitHeight,
                ),
              ],
            ),
          ),
          minHeight: 100,
          maxHeight: Common.displayHeight(context) / 1.4,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          color: Color.fromRGBO(8, 174, 158, 1),
          panel: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: Common.displayHeight(context) * 0.02,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color.fromRGBO(252, 158, 158, 1),
                    backgroundImage: AssetImage('assets/Place.png'),
                    radius: 40,
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Place Name',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(255, 255, 255, 1)),
                      ),
                      SizedBox(
                        height: Common.displayHeight(context) * 0.01,
                      ),
                      Text('Restaurant',
                          style: TextStyle(
                              fontSize: 13,
                              color: Color.fromRGBO(255, 255, 255, 1))),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Open',
                        style: TextStyle(
                            fontSize: 10,
                            color: Color.fromRGBO(103, 255, 75, 1)),
                      ),
                    ],
                  ),
                  trailing: SizedBox(
                    width: 50,
                    child: Row(
                      children: [
                        Text(
                          '4.5',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromRGBO(255, 255, 255, 1)),
                        ),
                        SizedBox(
                          width: Common.displayWidth(context) * 0.014,
                        ),
                        Image(
                          image: AssetImage('assets/Stars.png'),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 35),
                  child: Row(
                    children: [
                      Image(image: AssetImage('assets/Clock.png'), height: 12),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        '11:00am - 10:00 pm',
                        style: TextStyle(fontSize: 11),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 35),
                  child: Row(
                    children: [
                      Image(
                          image: AssetImage(
                            'assets/Arrow.png',
                          ),
                          height: 12),
                      SizedBox(
                        width: 15,
                      ),
                      Text('1234 Street Name, Atlanta, GA',
                          style: TextStyle(fontSize: 11))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 35),
                  child: Row(
                    children: [
                      Image(image: AssetImage('assets/Phone.png'), height: 12),
                      SizedBox(
                        width: 15,
                      ),
                      Text('123-131-2311', style: TextStyle(fontSize: 11)),
                      SizedBox(
                        width: 20,
                      ),
                      Row(
                        children: [
                          Image(
                              image: AssetImage('assets/Globel.png'),
                              height: 12),
                          SizedBox(
                            width: 15,
                          ),
                          Text('www.place.com', style: TextStyle(fontSize: 11))
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: Row(
                    children: [
                      Text(
                        'REVIEWS',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(255, 255, 255, 1)),
                      ),
                      SizedBox(
                        width: 150,
                      ),
                      Text(
                        'Leave a Review +',
                        style: TextStyle(
                            fontSize: 10,
                            color: Color.fromRGBO(54, 248, 61, 1)),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 210,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 2, left: 10),
                          child: SizedBox(
                            width: 300,
                            child: Center(
                              child: Row(
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 10,
                                              top: 10,
                                              left: 10,
                                              right: 10),
                                          child: ListTile(
                                            trailing: Text('2m ago',
                                                style: TextStyle(
                                                    fontSize: 9,
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 1))),
                                            subtitle: SizedBox(
                                                height: 30,
                                                child: Text(
                                                  'Persons Name',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: Color.fromRGBO(
                                                          255, 255, 255, 1)),
                                                )),
                                            leading: CircleAvatar(
                                              backgroundColor: Color.fromRGBO(
                                                  252, 158, 158, 1),
                                              backgroundImage: AssetImage(
                                                  'assets/Place.png'),
                                              radius: 15,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20, bottom: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Bibendum est",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 1)),
                                                textAlign: TextAlign.start,
                                              ),
                                              // SizedBox(
                                              //   height:
                                              //       Common.displayHeight(context) * 0.01,
                                              // ),
                                              // Image(
                                              //   image: AssetImage('assets/Tile.png'),
                                              //   width: 20,
                                              // ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15)),
                                        color: Color.fromRGBO(35, 128, 109, 1)),
                                    // height: 125,
                                    width: 300, height: 110,
                                    // color: Color.fromRGBO(35, 128, 109, 1)
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Common.displayHeight(context) * 0.01,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2, left: 10),
                          child: SizedBox(
                            width: 300,
                            child: Center(
                              child: Row(
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 10,
                                              top: 10,
                                              left: 10,
                                              right: 10),
                                          child: ListTile(
                                            trailing: Text('2m ago',
                                                style: TextStyle(
                                                    fontSize: 9,
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 1))),
                                            subtitle: SizedBox(
                                                height: 30,
                                                child: Text(
                                                  'Persons Name',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: Color.fromRGBO(
                                                          255, 255, 255, 1)),
                                                )),
                                            leading: CircleAvatar(
                                              backgroundColor: Color.fromRGBO(
                                                  252, 158, 158, 1),
                                              backgroundImage: AssetImage(
                                                  'assets/Place.png'),
                                              radius: 15,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20, bottom: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Bibendum est",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 1)),
                                                textAlign: TextAlign.start,
                                              ),
                                              // SizedBox(
                                              //   height:
                                              //       Common.displayHeight(context) * 0.01,
                                              // ),
                                              // Image(
                                              //   image: AssetImage('assets/Tile.png'),
                                              //   width: 20,
                                              // ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15)),
                                        color: Color.fromRGBO(35, 128, 109, 1)),
                                    // height: 125,
                                    width: 300, height: 110,
                                    // color: Color.fromRGBO(35, 128, 109, 1)
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // collapsed: Container(
          //     child: Container(
          //       height: 90,
          //       child: Column(
          //         mainAxisAlignment: MainAxisAlignment.end,
          //       ),
          //     )
          // ),
          // ),
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
        ));
  }
}
