// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newszia/Screens/topics.dart';

class Languages extends StatefulWidget {
  const Languages({super.key});

  @override
  State<Languages> createState() => _LanguagesState();
}

class _LanguagesState extends State<Languages> {
   final List<Map<String, dynamic>> countries = [
    {"code": "AF", "image": "assets/AF.png", "name": "Afghanistan"},
    {"code": "AL", "image": "assets/AL.png", "name": "Albania"},
    {"code": "DZ", "image": "assets/DZ1.png", "name": "Algeria"},
    {"code": "AD", "image": "assets/AD.png", "name": "Andora"},
    {"code": "AO", "image": "assets/AO1.png", "name": "Angola"},
    {"code": "AR", "image": "assets/AR1.png", "name": "Argentina"},
  ];

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
              "What is your\nCountry?",
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
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Color.fromARGB(255, 217, 221, 221),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search country",
                  icon: Icon(
                    Icons.search_outlined,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          Expanded(
            child: ListView.builder(
              itemCount: countries.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 1),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ListTile(
                      leading: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            child: Image.asset(
                              "${countries[index]["image"]}",
                              fit: BoxFit.fill,
                            )),
                      ),
                      title: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "${countries[index]["code"]}  ",
                              style: GoogleFonts.roboto(
                                color: Color.fromARGB(255, 196, 190, 190),
                              ),
                            ),
                            TextSpan(
                              text: "${countries[index]["name"]}",
                              style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => Topics())));
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
