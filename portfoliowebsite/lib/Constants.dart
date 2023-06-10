// ignore_for_file: file_names

import 'package:flutter/material.dart';

Gradient homePageGradientDark = const LinearGradient(
  begin: Alignment.bottomLeft,
  colors: [
    Color.fromARGB(255, 10, 10, 10),
    Color.fromARGB(255, 20, 20, 20),
  ],
  stops: [
    0,
    1,
  ],
);

Gradient contactMeGradientDark = const LinearGradient(
  begin: Alignment.bottomLeft,
  colors: [
    Color.fromARGB(255, 10, 10, 10),
    Color.fromARGB(255, 20, 20, 20),
  ],
  stops: [
    0,
    1,
  ],
);
Gradient myWorkGradientDark = const LinearGradient(
  begin: Alignment.topLeft,
  colors: [
    Color.fromARGB(255, 10, 10, 10),
    Color.fromARGB(255, 20, 20, 20),
  ],
  stops: [
    0,
    1,
  ],
);

Color lightRed = const Color.fromARGB(255, 255, 96, 96);

Gradient projectbackground = const RadialGradient(
  colors: [
    Color.fromARGB(255, 10, 10, 10),
    Color.fromARGB(255, 20, 20, 20),
  ],
);

double projectBoxLimit = 1183;

double goldenRatio = 1.61803398875;

const String iAmADeveloper = 'I am a developer who uses Flutter and Dart';

const String part1 = 'I am an ';
const String part2 = 'App developer ';
const String part3 = 'who uses ';
const String part4 = 'Flutter ';
const String part5 = 'and ';
const String part6 = 'Dart';

const double widthPercentage = 0.7;
int textLength = iAmADeveloper.length;

const String home = 'Home ';
const String mywork = 'My Work';
const String contactme = 'Contact Me';

const double widthPercentage1 = 0.4;
const totalLength = home.length + mywork.length + contactme.length;
