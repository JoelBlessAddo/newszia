// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newszia/Auth/login.dart';

class Skip extends StatefulWidget {
  const Skip({super.key});

  @override
  State<Skip> createState() => _SkipState();
}

class _SkipState extends State<Skip> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20),
                child: RichText(
                    text: TextSpan(style: GoogleFonts.roboto(), children: [
                  TextSpan(
                      text: "NEWZ",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.italic,
                          color: Color.fromARGB(255, 11, 51, 85))),
                  TextSpan(
                      text: "IA",
                      style: TextStyle(
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                          color: Color.fromARGB(255, 11, 51, 85)))
                ])),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, right: 20),
                child: GestureDetector(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => Login())));
                },
                  child: Text(
                    "Skip",
                    style: GoogleFonts.roboto(
                      color: Color.fromARGB(255, 11, 51, 85),
                      fontSize: 20,
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Container(
                margin: EdgeInsets.all(16),
                height: h * 0.85,
                width: w * 1,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Stack(
                  children: [
                    Positioned(
                      child: Container(
                        height: h * 0.9,
                        width: w * 1,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            child: Image.asset(
                              "assets/g1.png",
                              fit: BoxFit.fitHeight,
                            )),
                      ),
                    ),
                    Positioned(
                        top: 320,
                        left: 20,
                        right: 0,
                        bottom: 0,
                        child: RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: "From art to\npolitics,\n",
                              style: GoogleFonts.roboto(
                                  fontSize: 35, fontWeight: FontWeight.w600)),
                          TextSpan(
                              text: "anything ",
                              style: GoogleFonts.roboto(
                                  color: Colors.redAccent,
                                  fontSize: 35,
                                  fontWeight: FontWeight.w600)),
                          TextSpan(
                              text: "in\nNewzia.",
                              style: GoogleFonts.roboto(
                                  fontSize: 35, fontWeight: FontWeight.w600))
                        ]))),
                    Positioned(
                        top: 400,
                        right: 80,
                        left: 80,
                        bottom: 0,
                        child: Divider(
                          color: Colors.redAccent,
                          thickness: 5,
                        )),
                    Positioned(
                        top: 600,
                        right: 60,
                        left: 60,
                        bottom: 30,
                        child: GestureDetector(onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: ((context) => Login())));
                        },
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                                    child: Center(child: Text("Sign in", style: GoogleFonts.roboto(color: Colors.white, fontSize: 16),)),
                          ),
                        ))
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
