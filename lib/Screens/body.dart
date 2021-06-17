import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: use_key_in_widget_constructors
class BodyPage extends StatefulWidget {
  @override
  _BodyPageState createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
  _launchURLBrowser() async {
    const url = 'https://www.linkedin.com/in/srikanth-tiwari-26b102145/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        // ignore: prefer_const_constructors
        color: Color(0xffF9F8FB),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                // ignore: prefer_const_constructors
                margin: EdgeInsets.only(left: 50, top: 220),
                // ignore: prefer_const_constructors
                child: Text(
                  "Building and Developing \ndigital products, Brand",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 70),
                ),
              ),
            ),
            Container(
              // ignore: prefer_const_constructors
              margin: EdgeInsets.only(top: 0, left: 50),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Container(
                      // ignore: prefer_const_constructors
                      margin: EdgeInsets.only(top: 0),
                      child: Image.asset(
                        'assets/edit.png',
                        height: 50,
                        width: 50,
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(
                      width: 20,
                    ),
                    // ignore: prefer_const_constructors
                    Text(
                      "experience.",
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        // ignore: prefer_const_constructors
                        color: Color(
                          0xff5E3AED,
                        ),
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // ignore: prefer_const_constructors
              margin: EdgeInsets.only(top: 190, left: 50),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "a Mobile Application Developer and Product Designer \nfor both Native and Cross Platforms.",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Image.asset(
                'assets/design.png',
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Image.asset(
                'assets/mine.png',
                height: MediaQuery.of(context).size.height,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 60,
                width: 160,
                // ignore: prefer_const_constructors
                margin: EdgeInsets.only(top: 400, left: 50),
                // ignore: deprecated_member_use
                child: FlatButton(
                  textColor: Colors.white,
                  // ignore: prefer_const_constructors
                  color: Color(
                    0xff5E3AED,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  // ignore: prefer_const_constructors
                  child: Text('Connect with me'),
                  onPressed: () {
                    _launchURLBrowser();
                    // ignore: avoid_print
                    print("Hello User");
                  },
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                // ignore: prefer_const_constructors
                margin: EdgeInsets.only(bottom: 20),
                // ignore: prefer_const_constructors
                child: Text(
                  "This Website is still Under-Development\nThank you",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
