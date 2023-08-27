// ignore_for_file: file_names

import 'package:ethan_mckay_portfolio/Constants.dart';
import 'package:ethan_mckay_portfolio/Widgets/contact_me_text_column.dart';
import 'package:ethan_mckay_portfolio/Widgets/top_navigation_bar.dart';
import 'package:ethan_mckay_portfolio/Widgets/contact_me_input_boxes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    double fontsize1 = textBoxSize(width, 1000) * 0.038;
    return SizedBox(
      height: height,
      width: width,
      child: Container(
        decoration: BoxDecoration(gradient: contactMeGradientDark),
        child: Column(
          children: [
            TopNavigationBar(page: 'contact'),
            Padding(
              padding: EdgeInsets.fromLTRB(
                width * 95 / 1920,
                0,
                width * 95 / 1920,
                0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * 89 / 1080 - (height * 0.07),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: width * 55 / 1920,
                      ),
                      ContactMeTextColumn()
                    ],
                  ),
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

double textBoxSize(width, limit) {
  if (width < limit) {
    return width - (width * 95 / 1920) * 2;
  } else {
    return limit;
  }
}
