// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bookgrid extends StatefulWidget {
  const Bookgrid({super.key});

  @override
  State<Bookgrid> createState() => _BookgridState();
}

class _BookgridState extends State<Bookgrid> {
   final List<Map<String, dynamic>> topics = [
      {
        "image": "assets/law.jpeg",
        "title": "Public",
        "items": "21 News",
      },
      {
        "image": "assets/en2.jpeg",
        "title": "Music",
        "items": "1 News",
      },
      {
        "image": "assets/fest.jpeg",
        "title": "Festival",
        "items": "2 News",
      },
     
    ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 4,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          mainAxisExtent: 200,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 221, 220, 218),
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        child: Image.asset(
                          "${topics[index]["image"]}",
                          fit: BoxFit.cover,
                        )),
                  ),
                  Positioned(
                    top: 130,
                    left: 40,
                    right: 0,
                    bottom: 0,
                    child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        child: Text(
                          "${topics[index]["title"]}",
                          style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        )),
                  ),
                   Positioned(
                    top: 150,
                    left: 40,
                    right: 0,
                    bottom: 0,
                    child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        child: Text(
                          "${topics[index]["items"]}",
                          style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 13),
                        )),
                  ),
                ],
              ));
        });
  }
}