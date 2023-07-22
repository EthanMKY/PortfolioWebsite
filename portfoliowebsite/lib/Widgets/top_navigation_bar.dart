import 'package:ethan_mckay_portfolio/Constants.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class TopNavigationBar extends StatefulWidget {
  const TopNavigationBar({super.key});
  @override
  State<TopNavigationBar> createState() => _TopNavigationBarState();
}

class _TopNavigationBarState extends State<TopNavigationBar> {
  @override
  Widget build(BuildContext context) {
    //Highlight(widget.page);

    //  double height = MediaQuery.of(context).size.height;
    //  double width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () {
            context.vxNav.popToRoot();
          },
          child: Text(
            'Home',
            style: GoogleFonts.exo(
              fontSize: 36,
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.solid,
              decorationColor: lightRed,
              color: lightRed,
            ),
          ),
        ),
        const SizedBox(
          width: 64,
        ),
        GestureDetector(
          onTap: () => context.vxNav.push(Uri(path: '/MyWork')),
          child: Text(
            'Projects',
            style: GoogleFonts.exo(
              fontSize: 36,
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.none,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          width: 64,
        ),
        GestureDetector(
          onTap: () => context.vxNav.push(Uri(path: '/ContactMe')),
          child: Text(
            'Contact Me',
            style: GoogleFonts.exo(
              fontSize: 36,
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.none,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
