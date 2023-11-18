// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newszia/specs/bottomNav.dart';
import 'package:newszia/specs/grid.dart';

class Topics extends StatefulWidget {
  const Topics({super.key});

  @override
  State<Topics> createState() => _TopicsState();
}

class _TopicsState extends State<Topics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: const [
          Center(
            child: Padding(
              padding: EdgeInsets.only(right: 20),
              child: Text(
                "Skip",
                style: TextStyle(
                  color: Color.fromARGB(255, 4, 66, 97),
                  fontSize: 16,
                ),
              ),
            ),
          )
        ],
        elevation: 0,
        iconTheme: IconThemeData(color: Color.fromARGB(255, 4, 66, 97)),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20, right: 200),
            child: Text(
              "Choose your\ntopics?",
              style: GoogleFonts.roboto(
                color: const Color.fromARGB(255, 4, 66, 97),
                fontSize: 25,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(height: 30),
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
                  hintText: "Search your topics",
                  icon: Icon(
                    Icons.search_outlined,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Expanded(child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Box(),
          )),
          SizedBox(height: 10),
           GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => bottNav())));
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Container(
                height: 50,
                width: 320,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.redAccent),
                child: Center(
                    child: Text(
                  "Next",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
