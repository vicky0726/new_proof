import 'package:flutter/material.dart';
import 'package:proof_app/common/common.dart';
import 'package:proof_app/screens/find_friends.dart';
import 'package:proof_app/screens/friend_request.dart';
import 'package:proof_app/screens/post_screen.dart';

class Friends_View extends StatefulWidget {
  const Friends_View({Key? key}) : super(key: key);

  @override
  State<Friends_View> createState() => _Friends_ViewState();
}

class _Friends_ViewState extends State<Friends_View> {
  int currentIndex = 0;
  List<String> images = [
    "https://static.wixstatic.com/media/ff557d_6e660b2614404648a96fe7638c3e1a62~mv2.jpg/v1/fill/w_560,h_350,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/output-onlinepngtools.jpg",
    "https://static.wixstatic.com/media/ff557d_6e660b2614404648a96fe7638c3e1a62~mv2.jpg/v1/fill/w_560,h_350,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/output-onlinepngtools.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 5,
        backgroundColor: Colors.white,
        toolbarHeight: _mediaQuery.size.height / 10,
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 18,
              top: 20,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(image: AssetImage('assets/MaskGroup.png')),
                SizedBox(
                  width: Common.displayWidth(context) * 0.3,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PostScreen()));
                    },
                    child: Image(image: AssetImage('assets/PlusButton.png'))),
                SizedBox(
                  width: Common.displayWidth(context) * 0.040,
                ),
                Image(image: AssetImage('assets/Search.png')),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 60,
              width: 420,
              color: Color.fromRGBO(8, 174, 158, 1),
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: GestureDetector(onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> FriendRequest()));
                },
                  child: Text(
                    'FLUFFLE  89',
                    style: TextStyle(
                        fontSize: 25, color: Color.fromRGBO(255, 255, 255, 1)),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.yellow,
                    backgroundImage: AssetImage('assets/Avatar.png')),
                title: Text(
                  'Profile Name',
                  style: TextStyle(fontSize: 18),
                ),
                subtitle: Text(
                  '3m ago',
                  style: TextStyle(
                      fontSize: 11, color: Color.fromRGBO(0, 0, 0, 1)),
                ),
                textColor: Color.fromRGBO(0, 0, 0, 1),
                trailing: Image(image: AssetImage('assets/Threeline.png')),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 230,
                  width: double.infinity,
                  child: PageView.builder(
                      onPageChanged: (index) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      itemCount: images.length,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          height: 400,
                          width: double.infinity,
                          child: Image.network(
                            images[index],
                            fit: BoxFit.cover,
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var i = 0; i < images.length; i++)
                      buildIndicator(currentIndex == i)
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 1),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Image(image: AssetImage('assets/Carrot.png')),
                      SizedBox(
                        width: 10,
                      ),
                      Text('3334'),
                      SizedBox(
                        width: 10,
                      ),
                      Image(image: AssetImage('assets/Comment.png')),
                      SizedBox(
                        width: 10,
                      ),
                      Text('200'),
                      SizedBox(
                        width: Common.displayWidth(context) * 0.45,
                      ),
                      Image(image: AssetImage('assets/Awesome.png'))
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                    textDirection: TextDirection.rtl,
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do \n eiusmod tempor incididunt ut labore #dasd #asdas #awda',
                    style: TextStyle(fontSize: 13),
                    textAlign: TextAlign.center),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: CircleAvatar(
                        radius: 30.0,
                        backgroundColor: Colors.yellow,
                        backgroundImage: AssetImage('assets/Avatar.png')),
                    title: Text(
                      'Profile Name',
                      style: TextStyle(fontSize: 18),
                    ),
                    subtitle: Text(
                      '3m ago',
                      style: TextStyle(
                          fontSize: 11, color: Color.fromRGBO(0, 0, 0, 1)),
                    ),
                    textColor: Color.fromRGBO(0, 0, 0, 1),
                    trailing: Image(image: AssetImage('assets/Threeline.png')),
                  ),
                ),
                SizedBox(
                  height: 230,
                  width: double.infinity,
                  child: PageView.builder(
                      onPageChanged: (index) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      itemCount: images.length,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          height: 400,
                          width: double.infinity,
                          child: Image.network(
                            images[index],
                            fit: BoxFit.cover,
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var i = 0; i < images.length; i++)
                      buildIndicator(currentIndex == i)
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 1),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Image(image: AssetImage('assets/Carrot.png')),
                      SizedBox(
                        width: 10,
                      ),
                      Text('3334'),
                      SizedBox(
                        width: 10,
                      ),
                      Image(image: AssetImage('assets/Comment.png')),
                      SizedBox(
                        width: 10,
                      ),
                      Text('200'),
                      SizedBox(
                        width: Common.displayWidth(context) * 0.45,
                      ),
                      Image(image: AssetImage('assets/Awesome.png'))
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      //     appBar: AppBar(
      //   backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      //   toolbarHeight: _mediaQuery.size.height / 8.5,
      //       title: Row(
      //         mainAxisAlignment: MainAxisAlignment.start,
      //         children: [
      //           Image(image: AssetImage('assets/MaskGroup.png',),fit: BoxFit.contain,),Container(
      //             padding: EdgeInsets.all(8),child: Text('szedgbfds'),
      //           )
      //         ],
      //       ),
      // )
    );
  }

  //////////  dots indicator

  Widget buildIndicator(bool isSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: Container(
        height: isSelected ? 12 : 8,
        width: isSelected ? 12 : 8,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isSelected ? Color.fromRGBO(8, 174, 158, 1) : Colors.grey),
      ),
    );
  }
}
