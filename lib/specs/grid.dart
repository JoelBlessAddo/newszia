// ignore_for_file: prefer_const_constructors, dead_code, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Box extends StatefulWidget {
  const Box({super.key});

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
   bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> Topics = [
      {
        "image":  "assets/sc2.jpeg",
        "title": "Science",
      },
      {
        "image": "assets/t1.jpeg",
        "title": "Technology",
      },
      {
        "image":  "assets/f1.jpeg",
        "title": "Fashion",
      },
      {
        "image":  "assets/fott.jpeg",
        "title": "Sports",
      },
      {
        "image": "assets/en1.jpeg",
        "title": "Entertainment",
      },
      {
        "image":  "assets/br1.jpeg",
        "title": "Culture",
      }
    ];
    return GridView.builder(
        itemCount: 6,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          mainAxisExtent: 270,
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
                    child: ClipRRect(borderRadius: BorderRadius.all(Radius.circular(25)),child: Image.asset("${Topics[index]["image"]}", fit: BoxFit.cover,)),
                  ),
                   Positioned(
                    top: 250,
                    left: 40,
                    right: 0,
                    bottom: 0,
                    child: ClipRRect(borderRadius: BorderRadius.all(Radius.circular(25)),child: Text("${Topics[index]["title"]}",style: GoogleFonts.roboto(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),)),
                  ),Positioned(
                    top: 0,
                    left: 90,
                    right: 0,
                    bottom: 200,
                    child: ClipRRect(borderRadius: BorderRadius.all(Radius.circular(25)),child:  Container(height: 20, width: 20, decoration: BoxDecoration(color: const Color.fromARGB(255, 194, 191, 191)),
                      child: Checkbox(side: BorderSide(style: BorderStyle.solid),
                            value: isChecked,
                            onChanged: (bool? newValue) {
                              setState(() {
                                isChecked = newValue!;
                              });
                            }),
                    ),),
                  )
                ],
              )
              );
        });
  }
}
