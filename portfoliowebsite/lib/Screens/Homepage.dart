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
              decoration: BoxDecoration(gradient: hpgradientdark),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 0, horizontal: width / 100 * 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height / 3,
                    ),
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
                      height: height / 100 * 15,
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
              decoration: BoxDecoration(gradient: amgradientdark),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: width / 100 * 49,
                      ),
                      SizedBox(
                        height: height / 100 * 10,
                        child: Center(
                          child: Text(
                            'Who am i?',
                            style: GoogleFonts.comfortaa(
                              color: Colors.white,
                              fontSize: 60,
                              textStyle: const TextStyle(
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height / 100 * 20,
                      ),
                      SizedBox(
                        width: width / 100 * 40,
                        height: height / 100 * 60,
                        child: Column(
                          children: [
                            Text(
                              """As a Flutter app developer, I specialize in building mobile applications using the Flutter framework. With Strong knowledge in programming languages such as Dart, I am proficient in designing and developing user interfaces using Flutters widgets. I also have experience integrating APIs and third-party libraries to enhance the functionality of the application.""",
                              style: GoogleFonts.comfortaa(
                                color: Colors.white,
                                fontSize: 20,
                                height: 1.2,
                                textStyle: const TextStyle(
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ),
                            Text(
                              '',
                              style: GoogleFonts.comfortaa(
                                color: Colors.white,
                                fontSize: 20,
                                textStyle: const TextStyle(
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ),
                            Text(
                              """With my proficiency in Flutter, I am able to create cross-platform applications with a modern UI design that delivers a smooth user experience. With a passion for clean, maintainable code, I strive to deliver high-quality applications that meet the needs of both end-users and stakeholders. """,
                              style: GoogleFonts.comfortaa(
                                color: Colors.white,
                                fontSize: 20,
                                height: 1.2,
                                textStyle: const TextStyle(
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ),
                            Text(
                              '',
                              style: GoogleFonts.comfortaa(
                                color: Colors.white,
                                fontSize: 20,
                                textStyle: const TextStyle(
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ),
                            Text(
                              """In my portfolio, you'll find a variety of applications that demonstrate my skills in Flutter development, Whether working independently or as part of a team, I am committed to delivering results that exceed expectations and drive business success.""",
                              style: GoogleFonts.comfortaa(
                                color: Colors.white,
                                height: 1.2,
                                fontSize: 20,
                                textStyle: const TextStyle(
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height / 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  child: SizedBox(
                                    width: width / 100 * 10,
                                    height: height / 100 * 5,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.white),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Get in touch?',
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
                                    findoutmorescroll(
                                        pagescrollcontroller, height * 2);
                                  },
                                ),
                                SizedBox(width: width / 100 * 20),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  VerticalDivider(
                    color: Colors.white,
                    width: 1,
                    endIndent: height / 100 * 5,
                    indent: height / 100 * 5,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: width / 100 * 49,
                      ),
                      SizedBox(
                        height: height / 100 * 10,
                        child: Center(
                          child: Text(
                            'Projects',
                            style: GoogleFonts.comfortaa(
                              color: Colors.white,
                              fontSize: 60,
                              textStyle: const TextStyle(
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: width / 100 * 20,
                            height: height / 100 * 40,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: width / 100 * 5,
                          ),
                          SizedBox(
                            width: width / 100 * 20,
                            height: height / 100 * 40,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height / 100 * 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: width / 100 * 20,
                            height: height / 100 * 40,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: width / 100 * 5,
                          ),
                          SizedBox(
                            width: width / 100 * 20,
                            height: height / 100 * 40,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          // contact me
          SizedBox(
            width: width,
            height: height,
            child: Container(
              decoration: BoxDecoration(gradient: hpgradientdark),
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
    duration: Duration(seconds: 1, milliseconds: 500),
    curve: Curves.easeOutExpo,
  );
}
