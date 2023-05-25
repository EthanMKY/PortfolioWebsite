// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Constants.dart';

class TextRowDescription extends StatelessWidget {
  const TextRowDescription({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double fontsize = width / 1920 * 40;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'I am an ',
          style: GoogleFonts.comfortaa(
            color: Colors.white,
            fontSize: fontsize,
            textStyle: const TextStyle(
              decoration: TextDecoration.none,
            ),
          ),
        ),
        Text(
          'App developer ',
          style: GoogleFonts.comfortaa(
            color: lightRed,
            fontSize: fontsize,
            fontWeight: FontWeight.w700,
            textStyle:
                TextStyle(decoration: TextDecoration.none, color: lightRed),
          ),
        ),
        Text(
          'who uses ',
          style: GoogleFonts.comfortaa(
            color: Colors.white,
            fontSize: fontsize,
            textStyle: const TextStyle(
              decoration: TextDecoration.none,
              color: Colors.white,
            ),
          ),
        ),
        Text(
          'Flutter ',
          style: GoogleFonts.comfortaa(
            fontWeight: FontWeight.w700,
            color: lightRed,
            fontSize: fontsize,
            textStyle: const TextStyle(
              decoration: TextDecoration.none,
            ),
          ),
        ),
        Text(
          'and ',
          style: GoogleFonts.comfortaa(
            color: Colors.white,
            fontSize: fontsize,
            textStyle: const TextStyle(
              decoration: TextDecoration.none,
            ),
          ),
        ),
        Text(
          'Dart',
          style: GoogleFonts.comfortaa(
            fontWeight: FontWeight.w700,
            color: lightRed,
            fontSize: fontsize,
            textStyle: const TextStyle(decoration: TextDecoration.none),
          ),
        ),
      ],
    );
  }
}
