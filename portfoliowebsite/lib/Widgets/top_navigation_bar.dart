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
  @override
  bool homePageHover = false;
  bool myWorkHover = false;
  bool contactMeHover = false;

  @override
  void initState() {
    super.initState();
    highlight(widget.page);
  }

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 100,
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () => context.vxNav.clearAndPush(Uri(path: '/'), params: 'home'),
                child: MouseRegion(
                  onEnter: (event) {
                    highlight('home');
                  },
                  onExit: (event) {
                    highlight(widget.page);
                  },
                  child: Text(home.removeAllWhiteSpace(), style: textStyle(homePageHover)),
                ),
              ),
            ),
          ),
          SizedBox(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () => context.vxNav.push(Uri(path: '/MyWork'), params: 'work'),
                child: MouseRegion(
                  onEnter: (event) {
                    highlight('');
                  },
                  onExit: (event) {
                    highlight(widget.page);
                  },
                  child: Text(mywork, style: textStyle(myWorkHover)),
                ),
              ),
            ),
          ),
          SizedBox(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () => context.vxNav.push(Uri(path: '/ContactMe'), params: 'contact'),
                child: MouseRegion(
                  onEnter: (event) {
                    highlight('contact');
                  },
                  onExit: (event) {
                    highlight(widget.page);
                  },
                  child: Text(contactme, style: textStyle(contactMeHover)),
                ),
              ),
            ),
          ),
        ],
      ),
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

  TextStyle textStyle(bool hover) {
    return GoogleFonts.exo(
      decoration: hover ? TextDecoration.underline : TextDecoration.none,
      color: hover ? lightRed : Colors.white,
      fontSize: 48,
    );
  }
}
