// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newszia/specs/tabbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                    text: TextSpan(style: GoogleFonts.roboto(), children: [
                  TextSpan(
                      text: "NEWZ",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.italic,
                          color: Color.fromARGB(255, 11, 51, 85))),
                  TextSpan(
                      text: "IA",
                      style: TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 11, 51, 85)))
                ])),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications_none_outlined),
                  color: Colors.black,
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: h * 0.50,
            width: w * 0.9,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 129, 127, 127),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Stack(
              children: [
                Positioned(
                    top: 0,
                    left: 0,
                    bottom: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 129, 128, 128),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          child: Image.asset(
                            "assets/dark.jpeg",
                            fit: BoxFit.fitHeight,
                          )),
                    )),
                Positioned(
                    top: 20,
                    right: 20,
                    left: 290,
                    bottom: 330,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.bookmark_outline_outlined)),
                    )),
                Positioned(
                    top: 160,
                    right: 260,
                    left: 30,
                    bottom: 215,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 117, 181, 233),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Center(
                          child: Text(
                        "Travel",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w600, color: Colors.white),
                      )),
                    )),
                Positioned(
                    top: 165,
                    right: 70,
                    left: 120,
                    bottom: 0,
                    child: Text(
                      "5 min reads",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600, color: Colors.white),
                    )),
                Positioned(
                    top: 220,
                    right: 100,
                    left: 30,
                    bottom: 120,
                    child: Text(
                      "The UNESCO World Heritage Site with sky-\nhigh house prices",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                          fontSize: 16),
                    )),
                Positioned(
                    top: 320,
                    right: 280,
                    left: 30,
                    bottom: 40,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: Center(
                          child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              child: Image.asset(
                                "assets/bbc.png",
                                fit: BoxFit.fill,
                              ))),
                    )),
                Positioned(
                    top: 335,
                    right: 60,
                    left: 90,
                    bottom: 40,
                    child: Text(
                      "BBC NEWS",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600, color: Colors.white),
                    )),
                Positioned(
                    top: 340,
                    right: 30,
                    left: 240,
                    bottom: 40,
                    child: Text(
                      "3 hours ago",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400, color: Colors.white),
                    )),
              ],
            ),
          ),SizedBox(height: 10),
        ],
      ),
    );
  }
}
