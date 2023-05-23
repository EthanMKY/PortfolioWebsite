import 'package:flutter/material.dart';
import 'dart:math';

Gradient hpgradientdark = const LinearGradient(
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
Gradient amgradientdark = const LinearGradient(
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

Gradient amgradientlight = const LinearGradient(
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
Gradient hpgradientlight = const LinearGradient(
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

Color lightRed = Color.fromARGB(255, 255, 96, 96);
