// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
    final List<Map<String, dynamic>> content = [
    {
      "text": "Peak oil is coming.That won't\nsave the world",
      "image": "assets/gf.jpg",
      "time": "1 min ago",
      "reads": "12 min ago",
      "ID": "Business"
    },
    {
      "text": "Peak oil is coming. That won't save the world",
      "image": "assets/fot1.jpeg",
      "time": "1 min ago",
      "reads": "12 min ago",
      "ID": "Mining"
    },
    {
      "text": "Peak oil is coming. That won't save the world",
      "image": "assets/g1.png",
      "time": "1 min ago",
      "reads": "12 min ago",
      "ID": "Local"
    },
    {
      "text": "Peak oil is coming. That won't save the world",
      "image": "assets/br1.jpeg",
      "time": "1 min ago",
      "reads": "12 min ago",
      "ID": "Abroad"
    },
    {
      "text": "Peak oil is coming. That won't save the world",
      "image": "assets/fott.jpeg",
      "time": "1 min ago",
      "reads": "12 min ago",
      "ID": "Africa"
    }
  ];
  @override
  Widget build(BuildContext context) {
     double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body:  SingleChildScrollView(
        child: Column(
              children: [
                for (var data in content)
                  Container(
                    margin: EdgeInsets.all(20),
                    height: h * 0.19,
                    width: w * 1,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 231, 227, 227),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Stack(
                      children: [
                        Positioned(
                            top: 10,
                            left: 10,
                            bottom: 10,
                            right: 230,
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.redAccent,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    child: Image.asset(
                                      data["image"],
                                      fit: BoxFit.cover,
                                    )))),
                        Positioned(
                            top: 10,
                            left: 130,
                            right: 0,
                            bottom: 0,
                            child: Text(
                              data['ID'],
                              style: GoogleFonts.roboto(
                                  color: Colors.black, fontWeight: FontWeight.w500),
                            )),
                        Positioned(
                            top: 10,
                            left: 200,
                            right: 0,
                            bottom: 0,
                            child: Text(data['reads'],
                                style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800))),
                        Positioned(
                            top: 0,
                            left: 310,
                            right: 10,
                            bottom: 120,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 231, 227, 227),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.bookmark_outline_outlined),
                                color: Colors.redAccent,
                              ),
                            )),
                        Positioned(
                            top: 40,
                            left: 130,
                            right: 10,
                            bottom: 0,
                            child: Text(data['text'],
                                style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900))),
                        Positioned(
                            top: 100,
                            left: 130,
                            right: 10,
                            bottom: 0,
                            child: Text(data['time'],
                                style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)))
                      ],
                    ),
                  )
              ],
            ),
      ),
    );
  }
}