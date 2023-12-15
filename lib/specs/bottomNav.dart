// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:newszia/Screens/search.dart';
import 'package:newszia/Screens/home.dart';
import 'package:newszia/Screens/profile.dart';
import 'package:newszia/Screens/bookmark.dart';

class bottNav extends StatefulWidget {
  const bottNav({super.key});

  @override
  State<bottNav> createState() => _bottNavState();
}

class _bottNavState extends State<bottNav> {
  List<Widget> navBar = [Home(), Search(), BookMark(), Profile()];

  int _selectedIndex = 0;
  @override
  void initState(){
    super.initState();
    _selectedIndex= _selectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:GNav(
        tabs: [
          GButton(
            icon: Icons.home_outlined,
            text: "Home",
          ),
          GButton(
            icon: Icons.search_outlined,
            text: "Search",
          ),
          GButton(
            icon: Icons.bookmark_outline_outlined,
            text: "BookMark",
          ),
          GButton(
            icon: Icons.person_2_outlined,
            text: "Profile",
          ),
        ],
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          setState(() {
             _selectedIndex = index;
          });
        },
        activeColor: Colors.redAccent,
      ),
      body: navBar.elementAt(_selectedIndex),
    );
  }
}
