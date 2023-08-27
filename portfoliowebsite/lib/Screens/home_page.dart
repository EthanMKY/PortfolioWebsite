import 'package:ethan_mckay_portfolio/Constants.dart';
import 'package:ethan_mckay_portfolio/Widgets/text_row_description.dart';
import 'package:ethan_mckay_portfolio/Widgets/top_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({
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
      child: Column(
        children: [
          TopNavigationBar(page: 'home'),
          Padding(
            padding: EdgeInsets.fromLTRB(width * 95 / 1920, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: height * 168 / 1080),
                SizedBox(
                  width: width * 0.8,
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      """Hi, my name is Ethan Mckay""",
                      style: GoogleFonts.exo(
                        color: Colors.white,
                        textStyle: const TextStyle(
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                ),
                const TextRowDescription(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
