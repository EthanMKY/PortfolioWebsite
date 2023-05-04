import 'package:flutter/material.dart';
import 'dart:math';

Gradient gradient = const LinearGradient(
  begin: Alignment.bottomLeft,
  colors: [
    Colors.black,
    Color.fromARGB(255, 10, 10, 10),
    Color.fromARGB(255, 15, 15, 15),
    Color.fromARGB(255, 20, 20, 20),
    Color.fromARGB(255, 25, 25, 25),
    Color.fromARGB(255, 20, 20, 20),
    Color.fromARGB(255, 15, 15, 15),
    Color.fromARGB(255, 10, 10, 10),
    Colors.black,
  ],
  stops: [
    0.1,
    0.2,
    0.3,
    0.4,
    0.5,
    0.6,
    0.7,
    0.8,
    0.9,
  ],
);
