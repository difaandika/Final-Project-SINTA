import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sinta/pages/EmCall.dart';
import 'package:sinta/pages/SignIn_Page.dart';
import 'package:sinta/pages/scan_image.dart';
import 'package:camera/camera.dart';

class HomePage extends StatefulWidget {
  final CameraDescription? camera;
  const HomePage({Key? key, this.camera}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Row(
          children: [
            Image.asset(
              "assets/images/bangkit.png",
              height: 100,
              width: 120,
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SignInPage(
                              camera: widget.camera,
                            )));
              },
              icon: Icon(
                Icons.logout,
                color: Colors.black,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30, left: 5),
              child: Text(
                'Sign Board\nTranslator',
                style: TextStyle(fontSize: 45.6, fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                'Explore Indonesia',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Stack(
                        children: [
                          Container(
                            height: 120,
                            width: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/slide-1.jpeg'),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            top: 10,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Indonesia',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Lets Explore Indonesia',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ],
                            ),
                          )
                        ],
                      )),
                  Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Stack(
                        children: [
                          Container(
                            height: 120,
                            width: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/slide-2.jpeg'),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            top: 10,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sign Board',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Scan the Sign Board',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ],
                            ),
                          )
                        ],
                      )),
                  Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Stack(
                        children: [
                          Container(
                            height: 120,
                            width: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/slide-3.jpeg'),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            top: 10,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Travel',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Travel Safely',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ],
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              height: 5,
              child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(15))),
            ),
            SizedBox(height: 15),
            Container(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ScanImage(
                                    camera: widget.camera,
                                  )));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              color: Colors.orange.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(15)),
                          child: Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        SizedBox(height: 6),
                        Container(
                          height: 30,
                          width: 80,
                          child: Text(
                            'Scan Sign Board',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff241818),
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => EmCall()));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              color: Colors.orange.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(15)),
                          child: Icon(
                            Icons.call,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        SizedBox(height: 6),
                        Container(
                          height: 30,
                          width: 80,
                          child: Text(
                            'Emergency Call',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff241818),
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
