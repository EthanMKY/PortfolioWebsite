import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfoliowebsite/Constants.dart';
import 'package:portfoliowebsite/Widgets/TextRowDescription.dart';

class HomePage extends StatefulWidget {
  HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    ScrollController pagescrollcontroller = ScrollController();
    return SizedBox(
      width: width,
      height: height,
      child: ListView(
        controller: pagescrollcontroller,
        children: [
          // HOMEPAGE
          SizedBox(
            width: width,
            height: height,
            child: Container(
              decoration: BoxDecoration(gradient: gradient),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 0, horizontal: width / 100 * 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Hi, my name is Ethan Mckay',
                      style: GoogleFonts.comfortaa(
                        color: Colors.white,
                        fontSize: 72,
                        textStyle: const TextStyle(
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    const TextRowDescription(),
                    SizedBox(
                      height: height / 100 * 10,
                    ),
                    GestureDetector(
                      child: SizedBox(
                        width: width / 100 * 10,
                        height: height / 100 * 5,
                        child: Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1, color: Colors.white)),
                          child: Center(
                            child: Text(
                              'Find out more',
                              style: GoogleFonts.comfortaa(
                                color: Colors.white,
                                fontSize: 20,
                                textStyle: const TextStyle(
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        findoutmorescroll(pagescrollcontroller, height);
                      },
                    )
                  ],
                ),
              ),
            ),
          ),

          // About Me

          SizedBox(
            width: width,
            height: height,
            child: Container(
              decoration: const BoxDecoration(color: Colors.grey),
              child: Center(
                child: Text(
                  'About Me',
                  style: TextStyle(fontSize: height / 100 * 25),
                ),
              ),
            ),
          ),
          // contact me
          SizedBox(
            width: width,
            height: height,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.blueAccent,
              ),
              child: Center(
                child: Text(
                  'Contact Me',
                  style: TextStyle(fontSize: height / 100 * 25),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

findoutmorescroll(ScrollController scrollController, double height) {
  scrollController.animateTo(
    height,
    duration: Duration(seconds: 2),
    curve: Curves.easeOutExpo,
  );
}
