// ignore_for_file: file_names, non_constant_identifier_names

import 'package:ethan_mckay_portfolio/Widgets/project_box.dart';
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

BoxFit aBoxFit(aspectRatop) {
  if (aspectRatop < 1) {
    return BoxFit.fitHeight;
  }
  return BoxFit.fitWidth;
}

bool MobileView(width, aspectRatio) {
  if (width < projectBoxLimit && aspectRatio < 1) {
    return true;
  }
  return false;
}

double ProjectBoxWidth(width, limit, mobileview) {
  if (width < limit) {
    return width;
  } else {
    return limit;
  }
}

double ProjectBoxHeight(width, limit, bool mobileview) {
  if (mobileview) {
    if (width < limit) {
      return width * goldenRatio;
    } else {
      return limit * goldenRatio;
    }
  } else {
    if (width < limit) {
      return width / goldenRatio;
    } else {
      return limit / goldenRatio;
    }
  }
}

String contactmedescriptionp1 = 'Wondering how to';
String contactmedescriptionp2 = ' start';
String contactmedescriptionp3 = ' our';
String contactmedescriptionp4 = ' journey together?';
String contactmedescriptionp5 = 'Lets connect ';
String contactmedescriptionp6 = 'via email!';

int firstlinelength = contactmedescriptionp1.length + contactmedescriptionp2.length + contactmedescriptionp3.length + contactmedescriptionp4.length;
int secondlinelength = contactmedescriptionp5.length + contactmedescriptionp6.length;
int totallinelength = firstlinelength + secondlinelength;
