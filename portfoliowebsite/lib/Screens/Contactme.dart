import 'package:flutter/material.dart';

class ContactMe extends StatefulWidget {
  const ContactMe({super.key});

  @override
  State<ContactMe> createState() => _ContactMeState();
}

class _ContactMeState extends State<ContactMe> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width,
      height: height,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.blueAccent,
        ),
        child: Center(
          child: Text(
            'Contact Me',
            style: TextStyle(fontSize: height / 100 * 25),
          ),
        ),
      ),
    );
  }
}
