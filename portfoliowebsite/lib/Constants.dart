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

Gradient myWorkGradientLight = const LinearGradient(
  begin: Alignment.topLeft,
  colors: [
    Color.fromARGB(255, 245, 245, 245),
    Color.fromARGB(255, 235, 235, 235),
  ],
  stops: [
    0,
    1,
  ],
);
Gradient homePageGradientLight = const LinearGradient(
  begin: Alignment.bottomLeft,
  colors: [
    Color.fromARGB(255, 245, 245, 245),
    Color.fromARGB(255, 235, 235, 235),
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
