import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:portfoliowebsite/Constants.dart';
import 'package:velocity_x/velocity_x.dart';

class TopNavigationBar extends StatefulWidget {
  TopNavigationBar({super.key, required this.page});
  String page;
  @override
  State<TopNavigationBar> createState() => _TopNavigationBarState();
}

class _TopNavigationBarState extends State<TopNavigationBar> {
  bool homePageHover = false;
  bool myWorkHover = false;
  bool contactMeHover = false;

  void Highlight(page) {
    setState(() {
      if (page == 'home') {
        homePageHover = true;
        myWorkHover = false;
        contactMeHover = false;
      } else if (page == 'contact') {
        homePageHover = false;
        myWorkHover = false;
        contactMeHover = true;
      } else {
        homePageHover = false;
        myWorkHover = true;
        contactMeHover = false;
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Highlight(widget.page);
  }

  @override
  Widget build(BuildContext context) {
    //Highlight(widget.page);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double fontsize = 36 * width / 1920;
    return Column(
      children: [
        SizedBox(
          height: height * 40 / 1080,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MouseRegion(
              child: TextButton(
                onPressed: () {
                  context.vxNav.clearAndPush(Uri(path: "/"));
                },
                child: Text(
                  'Home',
                  style: GoogleFonts.exo(
                    fontSize: fontsize,
                    decoration: homePageHover
                        ? TextDecoration.underline
                        : TextDecoration.none,
                    color: homePageHover ? lightRed : Colors.white,
                  ),
                ),
              ),
              onEnter: (event) {
                setState(() {
                  if (widget.page == 'contact') {
                    myWorkHover = false;
                    homePageHover = true;
                    contactMeHover = false;
                  } else if (widget.page == 'home') {
                    myWorkHover = false;
                    homePageHover = true;
                    contactMeHover = false;
                  } else {
                    myWorkHover = false;
                    homePageHover = true;
                    contactMeHover = false;
                  }
                });
              },
              onExit: (event) {
                setState(() {
                  if (widget.page == 'contact') {
                    contactMeHover = true;
                    myWorkHover = false;
                    homePageHover = false;
                  } else if (widget.page == 'home') {
                    contactMeHover = false;
                    myWorkHover = false;
                    homePageHover = true;
                  } else {
                    contactMeHover = false;
                    myWorkHover = true;
                    homePageHover = false;
                  }
                });
              },
            ),
            //
            //
            //
            SizedBox(
              width: width * 19 / 1920,
            ),
            //
            //
            //
            MouseRegion(
              child: TextButton(
                onPressed: () {
                  context.vxNav.clearAndPush(Uri(path: "MyWork"));
                },
                child: Text(
                  'My Work',
                  style: GoogleFonts.exo(
                    fontSize: fontsize,
                    decoration: myWorkHover
                        ? TextDecoration.underline
                        : TextDecoration.none,
                    color: myWorkHover ? lightRed : Colors.white,
                  ),
                ),
              ),
              onEnter: (event) {
                setState(() {
                  if (widget.page == 'contact') {
                    myWorkHover = true;
                    homePageHover = false;
                    contactMeHover = false;
                  } else if (widget.page == 'home') {
                    myWorkHover = true;
                    homePageHover = false;
                    contactMeHover = false;
                  } else {
                    myWorkHover = true;
                    homePageHover = false;
                    contactMeHover = false;
                  }
                });
              },
              onExit: (event) {
                setState(() {
                  if (widget.page == 'contact') {
                    contactMeHover = true;
                    myWorkHover = false;
                    homePageHover = false;
                  } else if (widget.page == 'home') {
                    contactMeHover = false;
                    myWorkHover = false;
                    homePageHover = true;
                  } else {
                    contactMeHover = false;
                    myWorkHover = true;
                    homePageHover = false;
                  }
                });
              },
            ),
            //
            //
            //
            SizedBox(
              width: width * 19 / 1920,
            ),
            //
            //
            //
            MouseRegion(
              child: TextButton(
                onPressed: () {
                  context.vxNav.clearAndPush(Uri(path: "ContactMe"));
                },
                child: Text(
                  'Contact me',
                  style: GoogleFonts.exo(
                    fontSize: fontsize,
                    decoration: contactMeHover
                        ? TextDecoration.underline
                        : TextDecoration.none,
                    color: contactMeHover ? lightRed : Colors.white,
                  ),
                ),
              ),
              onEnter: (event) {
                setState(() {
                  if (widget.page == 'contact') {
                    contactMeHover = true;
                    myWorkHover = false;
                    homePageHover = false;
                  } else if (widget.page == 'home') {
                    contactMeHover = true;
                    myWorkHover = false;
                    homePageHover = false;
                  } else {
                    myWorkHover = false;
                    homePageHover = false;
                    contactMeHover = true;
                  }
                });
              },
              onExit: (event) {
                setState(() {
                  if (widget.page == 'contact') {
                    contactMeHover = true;
                    myWorkHover = false;
                    homePageHover = false;
                  } else if (widget.page == 'home') {
                    contactMeHover = false;
                    myWorkHover = false;
                    homePageHover = true;
                  } else {
                    contactMeHover = false;
                    myWorkHover = true;
                    homePageHover = false;
                  }
                });
              },
            )
          ],
        )
      ],
    );
  }
}
