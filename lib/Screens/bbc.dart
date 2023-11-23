// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class Bbc extends StatefulWidget {
  const Bbc({super.key});

  @override
  State<Bbc> createState() => _BbcState();
}

class _BbcState extends State<Bbc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(),
        actions: [
          IconButton(
              onPressed: () {
                _shareMore("Thanks for Sharing NewZia");
              },
              icon: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.share,
                  color: Colors.black,
                ),
              ))
        ],
      ),
      body: Column(
        children: [
         Padding(
           padding: const EdgeInsets.only(right: 270),
           child: CircleAvatar(radius: 40,
             child: ClipRRect(
                 borderRadius: BorderRadius.all(Radius.circular(20)),
                 child: Image.asset(
                   "assets/bbc.png",
                   fit: BoxFit.cover,
                 )),
           ),
         ),
        Row(children: [
          Text("data"),
        ],)
        ],
        
      ),
    );
  }

  void _shareMore(String text) {
    Share.share(text);
  }
}
