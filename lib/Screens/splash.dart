// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:newszia/Auth/skip.dart';

class Splash extends StatefulWidget {
  const Splash({super.key, required String title});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
   _navigate() async{await Future.delayed(Duration(seconds: 10));
    Navigator.push(context, MaterialPageRoute(builder: (context) => Skip()));
  }
   @override
  void initState() {
    super.initState();
    _navigate();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Image.asset("assets/g5.gif", fit: BoxFit.fill,)),
    );
  }
}