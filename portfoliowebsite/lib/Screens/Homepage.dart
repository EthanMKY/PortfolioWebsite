import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfoliowebsite/Constants.dart';

import 'package:portfoliowebsite/Widgets/TextRowDescription.dart';
import 'package:portfoliowebsite/Widgets/TopNavigationBar.dart';

class HomePage extends StatefulWidget {
  HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool darkmode = true;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(gradient: homePageGradientDark),
      child: Padding(
        padding: EdgeInsets.fromLTRB(width * 95 / 1920, height * 40 / 1080, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TopNavigationBar(
              page: 'home',
            ),
            SizedBox(height: height * 276 / 1080),
            Text(
              """Hi, my name is Ethan Mckay""",
              style: GoogleFonts.exo(
                color: Colors.white,
                fontSize: 96 * width / 1920,
                textStyle: const TextStyle(
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            const TextRowDescription(),
          ],
        ),
      ),
    );
  }
}
