// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Constants.dart';

class TextRowDescription extends StatelessWidget {
  const TextRowDescription({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: width * widthPercentage * part1.length / textLength,
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              part1,
              style: GoogleFonts.comfortaa(
                color: Colors.white,
                textStyle: const TextStyle(
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: width * widthPercentage * part2.length / textLength,
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              part2,
              style: GoogleFonts.comfortaa(
                color: lightRed,
                fontWeight: FontWeight.w700,
                textStyle:
                    TextStyle(decoration: TextDecoration.none, color: lightRed),
              ),
            ),
          ),
        ),
        SizedBox(
          width: width * widthPercentage * part3.length / textLength,
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              part3,
              style: GoogleFonts.comfortaa(
                color: Colors.white,
                textStyle: const TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: width * widthPercentage * part4.length / textLength,
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              part4,
              style: GoogleFonts.comfortaa(
                fontWeight: FontWeight.w700,
                color: lightRed,
                textStyle: const TextStyle(
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: width * widthPercentage * part5.length / textLength,
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              part5,
              style: GoogleFonts.comfortaa(
                color: Colors.white,
                textStyle: const TextStyle(
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: width * widthPercentage * part6.length / textLength,
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              part6,
              style: GoogleFonts.comfortaa(
                fontWeight: FontWeight.w700,
                color: lightRed,
                textStyle: const TextStyle(decoration: TextDecoration.none),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
