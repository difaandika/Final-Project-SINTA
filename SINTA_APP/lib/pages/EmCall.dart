import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EmCall extends StatefulWidget {
  @override
  _EmCallState createState() => _EmCallState();
}

class _EmCallState extends State<EmCall> {
  void _LaunchCaller(int number) async {
    var url = "tel:${number.toString()}";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'could not place call';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(
              Icons.chevron_left,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          _LaunchCaller(110);
                        },
                        child: Container(
                          height: 90,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            border: Border.all(color: Colors.white),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                offset: Offset(1, 1),
                                spreadRadius: 1,
                                blurRadius: 1,
                              )
                            ],
                          ),
                          padding: EdgeInsets.all(12),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                "assets/images/pol.png",
                                width: 30,
                              ),
                              SizedBox(width: 25),
                              RichText(
                                text: TextSpan(
                                  text: "police\n",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    height: 1.3,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "Emergency Call Police\n",
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(child: SizedBox()),
                              IconButton(
                                icon: Icon(Icons.call),
                                onPressed: null,
                              ),
                            ],
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 16),
                        ),
                      ),
                      SizedBox(height: 5),
                      GestureDetector(
                        onTap: () {
                          _LaunchCaller(119);
                        },
                        child: Container(
                          height: 90,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            border: Border.all(color: Colors.white),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                offset: Offset(1, 1),
                                spreadRadius: 1,
                                blurRadius: 1,
                              )
                            ],
                          ),
                          padding: EdgeInsets.all(12),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                "assets/images/med.png",
                                width: 30,
                              ),
                              SizedBox(width: 25),
                              RichText(
                                text: TextSpan(
                                  text: "Medic\n",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    height: 1.3,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "Emergency Call Medic\n",
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(child: SizedBox()),
                              IconButton(
                                icon: Icon(Icons.call),
                                onPressed: null,
                              ),
                            ],
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 16),
                        ),
                      ),
                      SizedBox(height: 5),
                      GestureDetector(
                        onTap: () {
                          _LaunchCaller(113);
                        },
                        child: Container(
                          height: 90,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            border: Border.all(color: Colors.white),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                offset: Offset(1, 1),
                                spreadRadius: 1,
                                blurRadius: 1,
                              )
                            ],
                          ),
                          padding: EdgeInsets.all(12),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                "assets/images/madam.png",
                                width: 30,
                              ),
                              SizedBox(width: 25),
                              RichText(
                                text: TextSpan(
                                  text: "Firefighters\n",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    height: 1.3,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "Emergency Call Firefighters\n",
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(child: SizedBox()),
                              IconButton(
                                icon: Icon(Icons.call),
                                onPressed: null,
                              ),
                            ],
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 16),
                        ),
                      ),
                      SizedBox(height: 5),
                      GestureDetector(
                        onTap: () {
                          _LaunchCaller(115);
                        },
                        child: Container(
                          height: 90,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            border: Border.all(color: Colors.white),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                offset: Offset(1, 1),
                                spreadRadius: 1,
                                blurRadius: 1,
                              )
                            ],
                          ),
                          padding: EdgeInsets.all(12),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                "assets/images/sar.png",
                                width: 30,
                              ),
                              SizedBox(width: 25),
                              RichText(
                                text: TextSpan(
                                  text: "Search and Rescue\n",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    height: 1.3,
                                  ),
                                  children: [
                                    TextSpan(
                                      text:
                                          "Emergency Call Search and Rescue\n",
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(child: SizedBox()),
                              IconButton(
                                icon: Icon(Icons.call),
                                onPressed: null,
                              ),
                            ],
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
        ));
  }
}
