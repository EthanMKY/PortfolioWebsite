import 'package:flutter/material.dart';

class Topbar extends StatefulWidget {
  const Topbar({super.key});

  @override
  State<Topbar> createState() => _TopbarState();
}

class _TopbarState extends State<Topbar> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width,
      height: height / 100 * 7.5,
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(188, 24, 24, 24),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: width / 100 * 10,
              child: Text(
                'Ethan Mckay',
                style: TextStyle(fontSize: 30 * height / 1000),
              ),
            ),
            SizedBox(
              width: width / 100 * 50,
            ),
            SizedBox(
              width: width / 100 * 15,
              child: Text(
                'About Me',
                style: TextStyle(fontSize: 30 * height / 1000),
              ),
            ),
            SizedBox(
              width: width / 100 * 15,
              child: Text(
                'My Skills',
                style: TextStyle(fontSize: 30 * height / 1000),
              ),
            ),
            SizedBox(
              width: width / 100 * 10,
              child: Text(
                'Contact Me',
                style: TextStyle(fontSize: 30 * height / 1000),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
