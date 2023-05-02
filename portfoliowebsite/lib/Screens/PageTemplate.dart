import 'dart:html';

import 'package:flutter/material.dart';
import 'package:portfoliowebsite/Widgets/Topbar.dart';

class PageTemplate extends StatefulWidget {
  PageTemplate(
      {super.key,
      required this.homepage,
      required this.contactme,
      required this.aboutme});
  Widget homepage;
  Widget contactme;
  Widget aboutme;
  @override
  State<PageTemplate> createState() => _PageTemplateState();
}

class _PageTemplateState extends State<PageTemplate> {
  late Widget homepage;
  late Widget contactme;
  late Widget aboutme;

  @override
  void initState() {
    homepage = widget.homepage;
    aboutme = widget.aboutme;
    contactme = widget.contactme;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    ScrollController pagescrollcontroller =
        ScrollController(initialScrollOffset: height / 100 * 5);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Topbar(),
          SizedBox(
            width: width,
            height: height / 100 * 92.5,
            child: ListView(
              controller: pagescrollcontroller,
              children: [
                homepage,
                aboutme,
                contactme,
              ],
            ),
          )
        ],
      ),
    );
  }
}
