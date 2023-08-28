// ignore_for_file: file_names

import 'package:ethan_mckay_portfolio/Constants.dart';
import 'package:ethan_mckay_portfolio/Widgets/contact_me_input_boxes.dart';
import 'package:ethan_mckay_portfolio/Widgets/contact_me_text_column.dart';
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
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height,
      width: width,
      child: Container(
        decoration: BoxDecoration(gradient: projectbackground),
        child: Column(
          children: [
            const TopNavigationBar(page: 'contact'),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * 95 / 1920,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [ContactMeTextColumn()],
                  ),
                  SizedBox(height: height * 32 / 1080),
                  const Center(child: ContactMeForm())
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
