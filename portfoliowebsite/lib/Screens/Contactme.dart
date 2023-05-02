import 'package:flutter/material.dart';

class ContactMe extends StatefulWidget {
  const ContactMe({super.key});

  @override
  State<ContactMe> createState() => _ContactMeState();
}

class _ContactMeState extends State<ContactMe> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.height;
    double height = MediaQuery.of(context).size.width;
    return const Placeholder();
  }
}
