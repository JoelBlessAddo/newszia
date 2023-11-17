// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:newszia/Tabs/Business.dart';
import 'package:newszia/Tabs/Latest.dart';
import 'package:newszia/Tabs/Politics.dart';
import 'package:newszia/Tabs/Sports.dart';
import 'package:newszia/Tabs/all.dart';
import 'package:newszia/Tabs/fashion.dart';
import 'package:newszia/Tabs/science.dart';
import 'package:newszia/Tabs/technology.dart';

class tabsButton extends StatefulWidget {
  const tabsButton({Key? key}) : super(key: key);

  @override
  State<tabsButton> createState() => _tabsButtonState();
}

class _tabsButtonState extends State<tabsButton> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Column(
        children: <Widget>[
          ButtonsTabBar(
            backgroundColor: const Color.fromARGB(255, 119, 118, 118),
            unselectedBackgroundColor: Colors.grey[300],
            unselectedLabelStyle: TextStyle(color: Colors.black),
            labelStyle:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            tabs: [
              Tab(
                text: "All",
              ),
              Tab(
                text: "Business",
              ),
              Tab(text: "Sports"),
              Tab(text: "Politics"),
              Tab(text: "Fashion"),
              Tab(text: "Science"),
              Tab(text: "Technology"),
              Tab(text: "Latest"),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: <Widget>[
                Center(
                  child: All(),
                ),
                Center(
                  child: Business(),
                ),
                Center(
                  child: Sports(),
                ),
                Center(
                  child: Politics(),
                ),
                Center(
                  child: Fashion(),
                ),
                Center(
                  child: Science(),
                ),
                Center(
                  child: Tech(),
                ),
                Center(
                  child: Latest(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
