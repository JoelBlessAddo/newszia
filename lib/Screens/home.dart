// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 30,),
         Padding(
           padding: const EdgeInsets.only(left: 10, right: 10),
           child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                      text: TextSpan(style: GoogleFonts.roboto(), children: [
                    TextSpan(
                        text: "NEWZ",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.italic,
                            color: Color.fromARGB(255, 11, 51, 85))),
                    TextSpan(
                        text: "IA",
                        style: TextStyle(
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 11, 51, 85)))
                  ])),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications_none_outlined),
                    color: Colors.black,
                  )
                ],
              ),
         ),
          
        ],
      ),
    );
  }
}
