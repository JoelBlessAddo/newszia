// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newszia/specs/bookgrid.dart';

class BookMark extends StatefulWidget {
  const BookMark({super.key});

  @override
  State<BookMark> createState() => _BookMarkState();
}

class _BookMarkState extends State<BookMark> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 40),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Bookmark",
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w900,
                    color: Color.fromARGB(255, 11, 51, 85),
                    fontSize: 20),
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete_outlined),
                color: Color.fromARGB(255, 11, 51, 85))
          ]),
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
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Bookgrid(),
          )),
        ],
      ),
    );
  }
}
