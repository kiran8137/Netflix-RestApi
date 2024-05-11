import 'package:flutter/material.dart';

class searchscreentitle extends StatelessWidget {
  final String title;
  const searchscreentitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontSize: 25, 
      fontWeight: FontWeight.bold),
    );
  }
}
