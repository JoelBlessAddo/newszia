// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
   bool isChecked = false;
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
       body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80, right: 120),
              child: Text(
                "Create\nan account",
                style: GoogleFonts.roboto(
                    fontSize: 45,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 11, 7, 68)),
              ),
            ),
            SizedBox(height: 35),
            Container(
                height: 55,
                width: 320,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 217, 221, 221),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 10, top: 4),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Username',
                        suffixIcon: Icon(Icons.person_outline_rounded)),
                  ),
                )),
            SizedBox(height: 15),
            Container(
                height: 55,
                width: 320,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 217, 221, 221),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 10, top: 4),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                        suffixIcon: Icon(Icons.email_sharp)),
                  ),
                )),
            SizedBox(height: 15),
            Container(
                height: 55,
                width: 320,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 217, 221, 221),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 10, top: 4),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                        suffixIcon: Icon(Icons.remove_red_eye)),
                  ),
                )),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Checkbox(
                      value: isChecked,
                      onChanged: (bool? newValue) {
                        setState(() {
                          isChecked = newValue!;
                        });
                      }),
                ),
                RichText(
                    text: TextSpan(
                        style: GoogleFonts.roboto(
                          color: Color.fromARGB(255, 174, 177, 177),
                        ),
                        children: [
                      TextSpan(
                          text: "I have read ",
                          style: TextStyle(fontWeight: FontWeight.w600)),
                      TextSpan(
                          text: "Terms & Agreement",
                          style: TextStyle(
                              color: Colors.redAccent,
                              fontWeight: FontWeight.w600))
                    ]))
              ],
            ),
            SizedBox(height: 30),
            Container(
              height: 50,
              width: 320,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.redAccent),
              child: Center(
                  child: Text(
                "Sign Up",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              )),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                "Or sign up with",
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 174, 177, 177)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Color.fromARGB(255, 200, 202, 202)),
                        child: Stack(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 40, top: 15),
                            child: Image.asset("assets/google.png",height: 20,)
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 18, left: 70),
                            child: Text("Google", style: TextStyle(fontWeight: FontWeight.w500),),
                          )
                        ],),
                  ),
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Color.fromARGB(255, 200, 202, 202)),
                        child: Stack(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 35, top: 9),
                            child: Image.asset("assets/apple.png",height: 30,)
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 18, left: 70),
                            child: Text("Apple ID", style: TextStyle(fontWeight: FontWeight.w500),),
                          )
                        ],),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}