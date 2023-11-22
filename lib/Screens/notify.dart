// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newszia/Tabs/politics.dart';
import 'package:newszia/Tabs/science.dart';
import 'package:newszia/Tabs/sports.dart';
import 'package:newszia/notifyTabs/follow.dart';
import 'package:newszia/notifyTabs/n_all.dart';
import 'package:newszia/notifyTabs/n_bookmark.dart';
import 'package:newszia/notifyTabs/n_share.dart';

class Notify extends StatefulWidget {
  const Notify({super.key});

  @override
  State<Notify> createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete_outline),
              color: Colors.black,
            ),
          ],
          iconTheme: IconThemeData(),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: DefaultTabController(
          length: 6,
          child: Column(
            children: [
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 250),
                child: Text(
                  "Notification",
                  style: GoogleFonts.roboto(
                      color: const Color.fromARGB(255, 17, 45, 68),
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 165),
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "You have ",
                      style: GoogleFonts.roboto(
                          color: const Color.fromARGB(255, 17, 45, 68), fontWeight: FontWeight.w600)),
                  TextSpan(
                      text: "4 notifications ",
                      style: GoogleFonts.roboto(color: Colors.redAccent)),
                  TextSpan(
                      text: "today",
                      style: GoogleFonts.roboto(
                          color: Color.fromARGB(255, 17, 45, 68), fontWeight: FontWeight.w600))
                ])),
              ),SizedBox(height: 20),
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
                    text: "Follow",
                  ),
                  Tab(
                    text: "Bookmark",
                  ),
                  Tab(
                    text: "Share",
                  ),
                  Tab(text: "Politics"),
                  Tab(text: "Science"),
                ],
              ),
               Expanded(
              child: TabBarView(
                children: [
                  Center(
                    child: N_all(),
                  ),
                  Center(
                    child: Follow(),
                  ),
                  Center(
                    child: N_share(),
                  ),
                  Center(
                    child: n_bookmark(),
                  ),
                  Center(
                    child: Politics(),
                  ),
                  Center(
                    child: Science(),
                  ),
                ],
              ),
            ),
            ],
          ),
        ));
  }
}
