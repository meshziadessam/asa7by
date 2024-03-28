import 'package:Asahby/Pages/Rules.dart';
import 'package:Asahby/widget/drawer.dart';
import 'package:flutter/material.dart';

import 'route1.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedPage = '';
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

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
          const Padding(
              padding: EdgeInsets.all(10.0),
              child: Padding(
                  padding: EdgeInsets.only(top: 60.0, left: 30),
                  child: Align(
                    alignment: Alignment.topRight,
                  ))),

          //////////////////////////////////////////////////////////
          Positioned(
            top: 120, // Set the top position below the app bar
            left: 0,
            right: 0,
            bottom: 0,

            child: Column(
              children: [
                //Top_Of_Page(),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 30),
                      Image.asset(
                        'assets/images/LOGO.png',
                        width: 300,
                      ),
                      const SizedBox(height: 70),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SecondRoute(),
                            ),
                          );
                          // Add your button tap behavior here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 251, 167, 42),
                          minimumSize: Size(200, 60),
                        ),
                        child: const Text(
                          'Play Now',
                          style: TextStyle(
                            color: Color.fromARGB(255, 51, 38, 117),
                            fontSize: 28,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 90),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'version 1.0',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
