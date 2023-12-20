// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newszia/BBCtabs/news.dart';
import 'package:newszia/HomeTabs/business.dart';
import 'package:share_plus/share_plus.dart';

class Bbc extends StatefulWidget {
  const Bbc({super.key});

  @override
  State<Bbc> createState() => _BbcState();
}

class _BbcState extends State<Bbc> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(),
          actions: [
            IconButton(
                onPressed: () {
                  _shareMore("Thanks for Sharing NewZia");
                },
                icon: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.share,
                    color: Colors.black,
                  ),
                ))
          ],
        ),
        body: DefaultTabController(
          length: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: 95,
                      width: 95,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          child: Image.asset("assets/bbc.png")),
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 100),
                        child: Text("BBC News",
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w600)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 155),
                        child: Text(
                          "@bbc",
                          style: GoogleFonts.poppins(fontSize: 16),
                        ),
                      ),
                      Container(
                        height: 45,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(25)),
                        child: Center(
                            child: Text(
                          "+ Follow",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        )),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Column(children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                      "The British Broadcasting Corporation (BBC) was founded on October 18, 1922. It was established as a public service broadcaster, funded by a license fee paid by UK households. The BBC was created to provide independent and impartial broadcasting."),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        Icon(
                          Icons.new_releases_outlined,
                          color: Colors.redAccent,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "bbc.com",
                            style: GoogleFonts.poppins(color: Colors.redAccent),
                          ),
                        )
                      ],
                    )),
              ),
              SizedBox(height: 20),
              Container(
                height: 80,
                width: w * 0.9,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 224, 222, 222),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Stack(
                    children: [
                      Positioned(
                          top: 10,
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Text(
                            "230",
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 11, 51, 85)),
                          )),
                      Positioned(
                          top: 45,
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Text("News",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500))),
                      Positioned(
                          top: 10,
                          left: 80,
                          right: 0,
                          bottom: 0,
                          child: Text(
                            "25K",
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 11, 51, 85)),
                          )),
                      Positioned(
                          top: 45,
                          left: 70,
                          right: 0,
                          bottom: 0,
                          child: Text("Follower",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500))),
                      Positioned(
                          top: 10,
                          left: 160,
                          right: 0,
                          bottom: 0,
                          child: Text(
                            "120",
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 11, 51, 85)),
                          )),
                      Positioned(
                          top: 45,
                          left: 150,
                          right: 0,
                          bottom: 0,
                          child: Text("Following",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500))),
                      Positioned(
                          top: 10,
                          left: 250,
                          right: 0,
                          bottom: 0,
                          child: Text(
                            "50K",
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 11, 51, 85)),
                          )),
                      Positioned(
                          top: 45,
                          left: 245,
                          right: 0,
                          bottom: 0,
                          child: Text(
                            "Upvoted",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500),
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: ButtonsTabBar(
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
                        text: "News",
                      ),
                      Tab(
                        text: "Upvote",
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Center(
                      child: News(),
                    ),
                    Center(
                      child: Business(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  void _shareMore(String text) {
    Share.share(text);
  }
}
