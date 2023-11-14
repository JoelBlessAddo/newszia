// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:newszia/Screens/bookmark.dart';
import 'package:newszia/Screens/home.dart';
import 'package:newszia/Screens/profile.dart';
import 'package:newszia/Screens/search.dart';

class bottNav extends StatefulWidget {
  const bottNav({super.key});

  @override
  State<bottNav> createState() => _bottNavState();
}

class _bottNavState extends State<bottNav> {
  List<Widget> navBar = [Home(), BookMark(), Search(), Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(tabs: [
        GButton(
          icon: Icons.home_outlined,
          text: "Home",
        ),
         GButton(
          icon: Icons.bookmark_outline_outlined,
          text: "BookMark",
        ),
         GButton(
          icon: Icons.search_outlined,
          text: "Search",
        ),
         GButton(
          icon: Icons.person_2_outlined,
          text: "Profile",
        )
      ]),
    );
  }
}
