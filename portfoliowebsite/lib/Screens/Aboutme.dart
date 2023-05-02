import 'package:flutter/material.dart';

class Aboutme extends StatefulWidget {
  const Aboutme({super.key});

  @override
  State<Aboutme> createState() => _AboutmeState();
}

class _AboutmeState extends State<Aboutme> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width,
      height: height / 100 * 92.5,
      child: Container(
        decoration: BoxDecoration(color: Colors.grey),
        child: Center(
          child: Text(
            'About Me',
            style: TextStyle(fontSize: height / 100 * 25),
          ),
        ),
      ),
    );
  }
}
