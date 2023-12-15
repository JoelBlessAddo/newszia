// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newszia/Screens/bbc.dart';
import 'package:newszia/Screens/home.dart';
import 'package:share_plus/share_plus.dart';

class HomeMini extends StatefulWidget {
  const HomeMini({super.key});

  @override
  State<HomeMini> createState() => _HomeMiniState();
}

class _HomeMiniState extends State<HomeMini> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton:  FloatingActionButton(
              backgroundColor: const Color.fromARGB(255, 230, 228, 228),
              onPressed: () {},
              child: Icon(
                Icons.thumb_up_alt_outlined,
                color: Colors.redAccent,
              ),
            ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: h * 0.50,
              width: w * 1,
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            child: Image.asset(
                              "assets/dark.jpeg",
                              fit: BoxFit.fitHeight,
                            )),
                      )),
                  Positioned(
                      top: 20,
                      right: 330,
                      left: 0,
                      bottom: 330,
                      child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => Home())));
                          },
                          icon: Icon(Icons.arrow_back, color: Colors.white))),
                  Positioned(
                      top: 20,
                      right: 20,
                      left: 300,
                      bottom: 330,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.bookmark_add_outlined,
                              color: Colors.white))),
                  Positioned(
                      top: 20,
                      right: 20,
                      left: 350,
                      bottom: 330,
                      child: IconButton(
                          onPressed: () {
                            _shareMore("Thanks for Sharing NEWZIA");
                          },
                          icon: Icon(Icons.share, color: Colors.white))),
                  Positioned(
                      top: 220,
                      right: 300,
                      left: 30,
                      bottom: 150,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 117, 181, 233),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Center(
                            child: Text(
                          "Travel",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w600, color: Colors.white),
                        )),
                      )),
                  Positioned(
                      top: 225,
                      right: 0,
                      left: 110,
                      bottom: 0,
                      child: Text(
                        "5 min reads",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w600, color: Colors.white),
                      )),
                  Positioned(
                      top: 225,
                      right: 0,
                      left: 220,
                      bottom: 0,
                      child: Text(
                        "|",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w600, color: Colors.white),
                      )),
                  Positioned(
                      top: 225,
                      right: 0,
                      left: 230,
                      bottom: 0,
                      child: Text(
                        "3 hours ago",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w600, color: Colors.white),
                      )),
                  Positioned(
                      top: 280,
                      right: 100,
                      left: 30,
                      bottom: 0,
                      child: Text(
                        "The UNESCO World Heritage Site with sky-\nhigh house prices",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                            fontSize: 16),
                      )),
                  Positioned(
                      top: 360,
                      right: 300,
                      left: 0,
                      bottom: 20,
                      child: Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.white,
                      )),
                  Positioned(
                      top: 365,
                      right: 30,
                      left: 70,
                      bottom: 0,
                      child: Text(
                        "2.500",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w600, color: Colors.white),
                      )),
                  Positioned(
                      top: 340,
                      right: 130,
                      left: 0,
                      bottom: 0,
                      child: Icon(
                        Icons.thumb_up_alt_outlined,
                        color: Colors.white,
                        size: 16,
                      )),
                  Positioned(
                      top: 365,
                      right: 0,
                      left: 150,
                      bottom: 0,
                      child: Text(
                        "540",
                        style: GoogleFonts.roboto(
                            color: Colors.white, fontWeight: FontWeight.w900),
                      )),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: CircleAvatar(
                    child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        child: Image.asset(
                          "assets/bbc.png",
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 130),
                  child: Text(
                    "BBC NEWS",
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w900, fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                    height: 35,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: GestureDetector(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: ((context) => Bbc())));
                    },
                      child: Stack(
                        children: [
                          Positioned(
                              top: 1,
                              bottom: 0,
                              right: 50,
                              left: 0,
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 16,
                              )),
                          Positioned(
                              top: 8,
                              bottom: 0,
                              right: 0,
                              left: 30,
                              child: Text(
                                "Follow",
                                style: GoogleFonts.roboto(color: Colors.white),
                              ))
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "Climate is the average weather in a place over many years. Climate change is a shift in those average conditions.\n\nWhen fossil fuels burn, they release greenhouse gases - mostly carbon dioxide (CO2). These additional gases trap extra energy in the atmosphere near the Earth's surface, causing the planet's temperature to rise.\n\nSince the start of the Industrial Revolution - when humans started burning large amounts of these fuels - the amount of CO2 in the atmosphere has risen by over 50%, and is still growing.",
                style: GoogleFonts.roboto(
                    fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
           
          ],
        ),
      ),
    );
  }

  void _shareMore(String text) {
    Share.share(text);
  }
}
