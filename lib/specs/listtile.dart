// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

class searchTile extends StatefulWidget {
  const searchTile({super.key});

  @override
  State<searchTile> createState() => _searchTileState();
}

class _searchTileState extends State<searchTile> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 1,
        itemBuilder: ((context, index) {
          return ListTile(
            title: Text("Indonesian travel"),
            trailing:
                IconButton(onPressed: () {}, icon: Icon(Icons.cancel_outlined)),
          );
        }));
  }
}
