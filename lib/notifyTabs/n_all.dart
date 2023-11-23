// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class N_all extends StatefulWidget {
  const N_all({super.key});

  @override
  State<N_all> createState() => _N_allState();
}

class _N_allState extends State<N_all> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Today",
              style: GoogleFonts.roboto(
                  color: const Color.fromARGB(255, 7, 36, 59),
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(height: 20),
          ListView.builder(itemBuilder: ((context, index) {
            return ListTile(
              
             );
          }))
        ],
      ),
    );
  }
}
