import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:portfoliowebsite/Widgets/Topbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width,
      height: height / 100 * 92.5,
      child: Container(
        decoration: BoxDecoration(color: Colors.blueGrey),
        child: Column(
          children: [
            Text(
              'Ethan Mckay',
              style: TextStyle(fontSize: height / 100 * 25),
            ),
            Text('Developing Apps or Websites using Flutter and Dart',
                style: TextStyle(fontSize: height / 100 * 5))
          ],
        ),
      ),
    );
  }
}
