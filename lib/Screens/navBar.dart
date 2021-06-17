import 'package:flutter/material.dart';
import 'package:portfolio/Screens/contact/contact.dart';
import 'package:portfolio/main.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 10,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 40,
          ),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                new MaterialPageRoute(
                  builder: (context) => MyApp(),
                ),
              );
            },
            child: Container(
                margin: EdgeInsets.only(top: 10),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Srikanth\n       Tiwari",
                    style: TextStyle(
                        color: Color(
                          0xff5E3AED,
                        ),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                )
                // Image.asset('assets/memoji.png'),
                ),
          ),
          Spacer(),
          Text(
            "About",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w200,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 40,
          ),
          Text(
            "Work",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w200,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 40,
          ),
          Text(
            "Services",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w200,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 40,
          ),
          InkWell(
            onTap: () {
              // Navigator.pushReplacement(
              //   context,
              //   new MaterialPageRoute(
              //     builder: (context) => Contact(),
              //   ),
              // );
            },
            child: Text(
              "Contact",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w200,
                color: Colors.black,
              ),
            ),
          ),
          Spacer(),
          Image.asset(
            'assets/linkedin.png',
            height: 30,
            width: 30,
          ),
          SizedBox(
            width: 30,
          ),
          Image.asset(
            'assets/github.png',
            height: 30,
            width: 30,
          ),
          SizedBox(
            width: 30,
          ),
          Image.asset(
            'assets/stackoverflow.png',
            height: 30,
            width: 30,
          ),
          SizedBox(
            width: 40,
          ),
        ],
      ),
    );
  }
}
