// ignore_for_file: file_names

import 'package:ethan_mckay_portfolio/Widgets/top_navigation_bar.dart';
import 'package:flutter/material.dart';

class ContactMe extends StatefulWidget {
  const ContactMe({super.key});

  @override
  State<ContactMe> createState() => _ContactMeState();
}

class _ContactMeState extends State<ContactMe> {
  @override
  Widget build(BuildContext context) {
    //  double width = MediaQuery.of(context).size.width;
    //  double height = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.black,
      child: const Padding(
        padding: EdgeInsets.all(64.0),
        child: Column(
          children: [TopNavigationBar(), Text('contact')],
        ),
      ),
    );
  }
}
