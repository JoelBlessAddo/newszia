// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newszia/AllDetailsTabs/All.dart';
import 'package:newszia/AllDetailsTabs/brexit.dart';
import 'package:newszia/AllDetailsTabs/detailpolitics.dart';
import 'package:newszia/AllDetailsTabs/government.dart';

class AllDetails extends StatefulWidget {
  const AllDetails({super.key});

  @override
  State<AllDetails> createState() => AllDetailsState();
}

class AllDetailsState extends State<AllDetails> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(),
        body: DefaultTabController(
          length: 4,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    height: 130,
                    width: 380,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 214, 214, 212),
                        borderRadius: BorderRadius.circular(20)),
                    child: Stack(
                      children: [
                        Positioned(
                            child: Container(
                          height: 130,
                          width: 380,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 214, 214, 212),
                              borderRadius: BorderRadius.circular(20)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              "assets/law.jpeg",
                              fit: BoxFit.fill,
                            ),
                          ),
                        )),
                        Positioned(
                            top: 40,
                            left: 10,
                            right: 0,
                            bottom: 0,
                            child: Text(
                              "Politics",
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            )),
                        Positioned(
                            top: 70,
                            left: 10,
                            right: 0,
                            bottom: 0,
                            child: Text(
                              "220 News",
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            )),
                      ],
                    )),
                SizedBox(height: 20),
                Container(
                  height: h * 0.40,
                  width: w * 0.95,
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                child: Image.asset(
                                  "assets/gf.jpg",
                                  fit: BoxFit.fitHeight,
                                )),
                          )),
                      Positioned(
                          top: 20,
                          right: 20,
                          left: 310,
                          bottom: 250,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.bookmark_outline_outlined)),
                          )),
                      Positioned(
                          top: 120,
                          right: 260,
                          left: 30,
                          bottom: 170,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 136, 134, 134),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Center(
                                child: Text(
                              "Politics",
                              style: GoogleFonts.roboto(color: Colors.black),
                            )),
                          )),
                      Positioned(
                          top: 125,
                          right: 70,
                          left: 120,
                          bottom: 30,
                          child: Text(
                            "5 min reads",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          )),
                      Positioned(
                          top: 170,
                          right: 100,
                          left: 30,
                          bottom: 90,
                          child: Text(
                            "Why Brexit still has a\nNothern Ireland Problem",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w800,
                                color: Colors.black,
                                fontSize: 16),
                          )),
                      Positioned(
                          top: 240,
                          right: 280,
                          left: 20,
                          bottom: 40,
                          child: Center(
                              child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(40)),
                                  child: Image.asset(
                                    "assets/bbc.png",
                                    fit: BoxFit.fill,
                                  )))),
                      Positioned(
                          top: 250,
                          right: 60,
                          left: 80,
                          bottom: 40,
                          child: Text(
                            "Jonathan",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )),
                      Positioned(
                          top: 250,
                          right: 30,
                          left: 240,
                          bottom: 40,
                          child: Text(
                            "3 hours ago",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          )),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 60,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color.fromARGB(255, 217, 221, 221),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search saved news",
                        prefixIcon: Icon(
                          Icons.search_outlined,
                          color: Colors.black,
                        ),
                        suffixIcon: Icon(
                          Icons.equalizer_outlined,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                ButtonsTabBar(
                  backgroundColor: const Color.fromARGB(255, 4, 66, 97),
                  unselectedBackgroundColor: Colors.white,
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  unselectedLabelStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  unselectedBorderColor: Colors.white,
                  radius: 200,
                  tabs: [
                    Tab(
                      text: "All",
                    ),
                    Tab(
                      text: "Brexit",
                    ),
                    Tab(
                      text: "Government",
                    ),
                    Tab(
                      text: "Politics",
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Center(
                        child: DetailAll(),
                      ),
                      Center(
                        child: Government(),
                      ),
                      Center(
                        child: Brexit(),
                      ),
                      Center(
                        child: DetailPolitics(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
