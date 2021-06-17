import 'package:flutter/material.dart';
import 'package:portfolio/Screens/body.dart';
// ignore: unused_import
import 'package:portfolio/Screens/contact/contact.dart';
import 'package:portfolio/Screens/navBar.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // ignore: prefer_const_constructors
        color: Color(0xffF8F9F9),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            // Contact(),
            BodyPage(),
            Align(
              alignment: Alignment.topCenter,
              child: NavBar(),
            ),
          ],
        ),
      ),
    );
  }
}
