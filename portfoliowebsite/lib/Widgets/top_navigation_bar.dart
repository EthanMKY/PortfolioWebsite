import 'package:ethan_mckay_portfolio/Constants.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class TopNavigationBar extends StatefulWidget {
  const TopNavigationBar({super.key, required this.page});
  final String page;
  @override
  State<TopNavigationBar> createState() => _TopNavigationBarState();
}

class _TopNavigationBarState extends State<TopNavigationBar> {
  bool homePageHover = false;
  bool myWorkHover = false;
  bool contactMeHover = false;

  @override
  void initState() {
    super.initState();
    highlight(widget.page);
  }

  @override
  Widget build(BuildContext context) {
    //Highlight(widget.page);
    double aspectratio = MediaQuery.of(context).size.aspectRatio;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    print(aspectratio);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          height: height * 40 / 1080,
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(width * 0.2, 0, 0, 0),
          child: SizedBox(
            width: width,
            child: SizedBox(
              width: width,
              height: height * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: widthPercentage1 * width * home.length / totalLength,
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () => context.vxNav.popToRoot(),
                        child: MouseRegion(
                          onEnter: (event) {
                            highlight('home');
                          },
                          onExit: (event) {
                            highlight(widget.page);
                          },
                          child: FittedBox(
                            fit: aBoxFit(aspectratio),
                            child: Text(home.removeAllWhiteSpace(), style: textStyle(homePageHover)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  //
                  SizedBox(
                    width: widthPercentage1 * width * mywork.length / totalLength,
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () => context.vxNav.push(Uri(path: 'MyWork')),
                        child: MouseRegion(
                          onEnter: (event) {
                            highlight('');
                          },
                          onExit: (event) {
                            highlight(widget.page);
                          },
                          child: FittedBox(
                            fit: aBoxFit(aspectratio),
                            child: Text(mywork, style: textStyle(myWorkHover)),
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    width: widthPercentage1 * width * contactme.length / totalLength,
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () => context.vxNav.push(Uri(path: 'ContactMe')),
                        child: MouseRegion(
                          onEnter: (event) {
                            highlight('contact');
                          },
                          onExit: (event) {
                            highlight(widget.page);
                          },
                          child: FittedBox(
                            fit: aBoxFit(aspectratio),
                            child: Text(contactme, style: textStyle(contactMeHover)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 0,
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  void highlight(page) {
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
}

TextStyle textStyle(bool hover) {
  return GoogleFonts.exo(
    decoration: hover ? TextDecoration.underline : TextDecoration.none,
    color: hover ? lightRed : Colors.white,
  );
}

double topNavigationBarText(double width, double limit) {
  if (width * limit / 1920 < limit) {
    return width * limit / 1920;
  } else {
    return limit;
  }
}
