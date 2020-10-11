import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Color.fromARGB(255, 242, 242, 242),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 0.0, color: Colors.transparent),
            borderRadius: BorderRadius.circular(12.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 0.0, color: Colors.transparent),
            borderRadius: BorderRadius.circular(12.0),
          ),
          hintText: 'Search news here',
          hintStyle: TextStyle(
            color: Color.fromARGB(255, 185, 185, 185),
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Color.fromARGB(255, 175, 175, 175),
          ),
          suffixIcon: Icon(
            Icons.mic_none,
            color: Color.fromARGB(255, 243, 25, 43),
          ),
        ),
      ),
    );
  }
}
