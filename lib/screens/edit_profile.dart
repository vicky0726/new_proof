import 'package:flutter/material.dart';
import 'package:proof_app/screens/settings_page.dart';
import 'package:proof_app/widgets/custom_elevated_button.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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
          'EDIT PROFILE',
          style: TextStyle(fontSize: 24, color: Color.fromRGBO(0, 172, 155, 1)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                  left: _mediaQuery.size.width * 0.01,
                  right: _mediaQuery.size.width * 0.01,
                  top: _mediaQuery.size.height * 0.01,
                  bottom: _mediaQuery.size.height * 0.01),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        radius: 40.0,
                        backgroundColor: Colors.transparent,
                        child: CircleAvatar(
                          radius: 40.0,
                          backgroundImage: AssetImage('assets/Avatar.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Image(image: AssetImage('assets/Edit.png')),
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(top: 16.0),
                      child: Text(
                        'albrt@gmail.com',
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: _mediaQuery.size.width * 0.9,
                    child: TextFormField(
                      // controller: passwordController,
                      // obscureText: hidden2,
                      validator: (val) {},

                      cursorHeight: 20,
                      autofocus: false,
                      onTap: () {},
                      style: TextStyle(color: Colors.black),
// controller: Controller,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Color.fromRGBO(229, 229, 229, 1))
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color.fromRGBO(229, 229, 229, 1))
                        ),
                        fillColor: Color.fromRGBO(229, 229, 229, 1),
                        filled: true,
                        hintText: 'Person Name',
                        // prefixIcon: Image(image: AssetImage('assets/padlock.png')),

// suffixIcon: Container(
//     height: 10, width: 10, child: InkWell(onTap: () {})),
                        prefixStyle: const TextStyle(color: Colors.white),

                        contentPadding:
                        const EdgeInsets.symmetric(vertical: 22, horizontal: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.white, width: 2),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: _mediaQuery.size.width * 0.9,
                    child: TextFormField(
                      // controller: passwordController,
                      // obscureText: hidden2,
                      validator: (val) {},

                      cursorHeight: 20,
                      autofocus: false,
                      onTap: () {},
                      style: TextStyle(color: Colors.black),
// controller: Controller,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Color.fromRGBO(229, 229, 229, 1))
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color.fromRGBO(229, 229, 229, 1))
                        ),
                        fillColor: Color.fromRGBO(229, 229, 229, 1),
                        filled: true,
                        hintText: 'Mobile Number',
                        // prefixIcon: Image(image: AssetImage('assets/padlock.png')),

// suffixIcon: Container(
//     height: 10, width: 10, child: InkWell(onTap: () {})),
                        prefixStyle: const TextStyle(color: Colors.white),

                        contentPadding:
                        const EdgeInsets.symmetric(vertical: 22, horizontal: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.white, width: 2),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: _mediaQuery.size.width * 0.9,
                    child: TextFormField(
                      // controller: passwordController,
                      // obscureText: hidden2,
                      validator: (val) {},

                      cursorHeight: 20,
                      autofocus: false,
                      onTap: () {},
                      style: TextStyle(color: Colors.black),
// controller: Controller,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Color.fromRGBO(229, 229, 229, 1))
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color.fromRGBO(229, 229, 229, 1))
                        ),
                        fillColor: Color.fromRGBO(229, 229, 229, 1),
                        filled: true,
                        hintText: 'Location',
                        // prefixIcon: Image(image: AssetImage('assets/padlock.png')),
                       suffixIcon: Icon(Icons.my_location_outlined),

// suffixIcon: Container(
//     height: 10, width: 10, child: InkWell(onTap: () {})),
                        prefixStyle: const TextStyle(color: Colors.white),

                        contentPadding:
                        const EdgeInsets.symmetric(vertical: 22, horizontal: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.white, width: 2),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: _mediaQuery.size.width * 0.9,
                    child: TextFormField(maxLines: 8,
                      // controller: passwordController,
                      // obscureText: hidden2,
                      validator: (val) {},

                      cursorHeight: 20,
                      autofocus: false,
                      onTap: () {},
                      style: TextStyle(color: Colors.black),
// controller: Controller,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Color.fromRGBO(229, 229, 229, 1))
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color.fromRGBO(229, 229, 229, 1))
                        ),
                        fillColor: Color.fromRGBO(229, 229, 229, 1),
                        filled: true,
                        hintText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
                        // prefixIcon: Image(image: AssetImage('assets/padlock.png')),
                        // suffixIcon: Icon(Icons.my_location_outlined),

// suffixIcon: Container(
//     height: 10, width: 10, child: InkWell(onTap: () {})),
                        prefixStyle: const TextStyle(color: Colors.white),

                        contentPadding:
                        const EdgeInsets.symmetric(vertical: 22, horizontal: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.white, width: 2),
                        ),
                      ),
                    ),
                    // child: TextField(
                    //   maxLines: 7,
                    //   decoration: InputDecoration(
                    //       // prefixIcon: Image(image: AssetImage('assets/mail.png')),
                    //       fillColor: Color.fromRGBO(229, 229, 229, 1),
                    //       filled: true,
                    //       hintStyle: TextStyle(fontSize: 16),
                    //       hintText:
                    //           'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Bibendum est ultricies integer quis. Iaculis urna id volutpat lacus laoreet. Mauris vitae ultricies leo integer',
                    //       enabledBorder: OutlineInputBorder(
                    //           borderSide: BorderSide(color: Colors.white),
                    //           borderRadius: BorderRadius.circular(7))),
                    // ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                 CustomElevatedButton(onPressed: (){}, text: 'SAVE')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
