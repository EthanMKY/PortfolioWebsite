import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextRowDescription extends StatelessWidget {
  const TextRowDescription({super.key});

  @override
  Widget build(BuildContext context) {
    Color blacktextcolor = Colors.black;
    Color whitetextcolor = Colors.white;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'I am an ',
          style: GoogleFonts.comfortaa(
            color: whitetextcolor,
            fontSize: 24,
            textStyle: TextStyle(
              decoration: TextDecoration.none,
            ),
          ),
        ),
        Text(
          'App developer ',
          style: GoogleFonts.comfortaa(
            color: Color.fromARGB(255, 8, 138, 212),
            fontSize: 28,
            fontWeight: FontWeight.w700,
            textStyle: TextStyle(
              decoration: TextDecoration.none,
            ),
          ),
        ),
        Text(
          'who uses ',
          style: GoogleFonts.comfortaa(
            color: whitetextcolor,
            fontSize: 24,
            textStyle: TextStyle(
              decoration: TextDecoration.none,
              color: whitetextcolor,
            ),
          ),
        ),
        Text(
          'Flutter ',
          style: GoogleFonts.comfortaa(
            fontWeight: FontWeight.w700,
            color: Color.fromARGB(255, 8, 138, 212),
            fontSize: 28,
            textStyle: TextStyle(
              decoration: TextDecoration.none,
            ),
          ),
        ),
        Text(
          'and ',
          style: GoogleFonts.comfortaa(
            color: whitetextcolor,
            fontSize: 24,
            textStyle: TextStyle(
              decoration: TextDecoration.none,
              color: whitetextcolor,
            ),
          ),
        ),
        Text(
          'Dart',
          style: GoogleFonts.comfortaa(
            fontWeight: FontWeight.w700,
            color: Color.fromARGB(255, 8, 138, 212),
            fontSize: 28,
            textStyle: TextStyle(
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ],
    );
  }
}
