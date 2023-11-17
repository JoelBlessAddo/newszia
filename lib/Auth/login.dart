// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, prefer_final_fields, curly_braces_in_flow_control_structures, dead_code

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newszia/Screens/home.dart';
import 'package:newszia/Screens/languages.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();

  bool isChecked = false;
  bool isToggle = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100, right: 150),
                child: RichText(
                    text: TextSpan(
                        style: GoogleFonts.roboto(
                            fontSize: 20, fontWeight: FontWeight.w600),
                        children: [
                      TextSpan(
                          text: "Login\n",
                          style: GoogleFonts.roboto(
                              fontSize: 35,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 11, 7, 68))),
                      TextSpan(
                          text: "to continue",
                          style: GoogleFonts.roboto(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: Colors.redAccent))
                    ])),
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 10),
                child: Column(children: [
                  Container(
                      height: 55,
                      width: 320,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 217, 221, 221),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 15, right: 10, top: 0),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          controller: _email,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Email',
                              suffixIcon: Icon(Icons.person_outline_rounded)),
                          validator: (value) {
                            if (value!.isEmpty) return ("Enter Email");
                            return null;
                          },
                        ),
                      )),
                  SizedBox(height: 20),
                  Container(
                      height: 55,
                      width: 320,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 217, 221, 221),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 15, right: 10, top: 0),
                        child: TextFormField(
                          controller: _password,
                          obscureText: isToggle,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password',
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isToggle = !isToggle;
                                    });
                                  },
                                  icon: Icon(isToggle
                                      ? Icons.visibility_off
                                      : Icons.visibility))),
                          validator: (value) {
                            if (value!.isEmpty)
                              return ("Enter Password");
                            else if (_password.text.length < 6) {
                              return ("Requires six Characters long");
                            }
                            return null;
                          },
                        ),
                      )),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 0),
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
                                text: "Remember Me",
                                style: TextStyle(fontWeight: FontWeight.w600)),
                          ])),
                      Padding(
                        padding: const EdgeInsets.only(left: 80),
                        child: Text(
                          "Forget password?",
                          style: GoogleFonts.roboto(
                              color: Colors.redAccent,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  GestureDetector(
                    onTap: () {
                     _submitButton();
                    },
                    child: Container(
                      height: 50,
                      width: 320,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Colors.redAccent),
                      child: Center(
                          child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      )),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      "Or continue with",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 174, 177, 177)),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: Color.fromARGB(255, 200, 202, 202)),
                          child: Stack(
                            children: [
                              Padding(
                                  padding:
                                      const EdgeInsets.only(left: 40, top: 15),
                                  child: Image.asset(
                                    "assets/google.png",
                                    height: 20,
                                  )),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 18, left: 70),
                                child: Text(
                                  "Google",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: Color.fromARGB(255, 200, 202, 202)),
                          child: Stack(
                            children: [
                              Padding(
                                  padding:
                                      const EdgeInsets.only(left: 35, top: 9),
                                  child: Image.asset(
                                    "assets/apple.png",
                                    height: 30,
                                  )),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 18, left: 70),
                                child: Text(
                                  "Apple ID",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
              )
            ],
          ),
        ),
      ),
    );
    
  }
  void _submitButton() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      if (_formKey.currentState!.validate()) {
      return;
    }

      String username = _email.text;
      String password = _password.text;

     

      if (username.isNotEmpty || password.isNotEmpty) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Home()));
      } 
    }
  }
}
