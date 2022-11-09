import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: TextField(
        decoration: InputDecoration(
          // border: OutlineInputBorder(),
          hintText: 'Search for a SKILLER',
          suffixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}