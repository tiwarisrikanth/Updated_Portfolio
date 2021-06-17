import 'package:flutter/material.dart';
import 'package:portfolio/Screens/contact/data.dart';
import 'package:portfolio/Screens/navBar.dart';

// ignore: use_key_in_widget_constructors
class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Stack(
          children: [
            NavBar(),
            Container(
              // ignore: prefer_const_constructors
              margin: EdgeInsets.only(top: 150),
              child: Align(
                alignment: Alignment.center,
                child: Data(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
