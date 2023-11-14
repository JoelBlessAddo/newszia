// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          Center(
              child: Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Text(
              "Skip",
              style: GoogleFonts.roboto(
                  color: Color.fromARGB(255, 4, 66, 97), fontSize: 16),
            ),
          ))
        ],
      ),
      body: Column(
        children: [
         Row(
          children: [
          
          ],
         )
        ],
      ),
    );
  }
}
