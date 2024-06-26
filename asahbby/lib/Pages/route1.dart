import 'package:Asahby/Pages/Rules.dart';
import 'package:flutter/material.dart';
import 'package:Asahby/widget/input.dart';

import '../widget/drawer.dart';

class SecondRoute extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawerwidget(),
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      _scaffoldKey.currentState!.openDrawer();
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 251, 167, 42),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.menu,
                          color: Color.fromARGB(255, 51, 38, 117),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Add your onTap behavior here
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Rules(),
                          ));
                    },
                    child: Image.asset(
                      'assets/images/LOGO.png',
                      width: 80,
                      // Add any other properties you need for the image
                    ),
                  )
                ]),
          ),
          ///////////////////////مش قادر اعرف ايه لازمتها بس من غيرها الكود مش بيشتغل///////////////////
          Padding(
              padding: const EdgeInsets.all(10.0),
              child: Padding(
                  padding: const EdgeInsets.only(top: 60.0, left: 30),
                  child: Align(
                    alignment: Alignment.topRight,
                  ))),

          /////////////////////////////////////////////////////////////////////////////////////////////////
          Positioned(
            top: 150, // Set the top position below the app bar
            left: 0,
            right: 0,
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  PlayerInput(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
