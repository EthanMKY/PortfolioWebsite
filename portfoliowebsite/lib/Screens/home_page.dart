import 'package:auto_size_text/auto_size_text.dart';
import 'package:ethan_mckay_portfolio/Constants.dart';
import 'package:ethan_mckay_portfolio/Widgets/project_box.dart';
import 'package:ethan_mckay_portfolio/Widgets/top_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool darkmode = true;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width,
      height: height,
      child: Container(
        color: Colors.black,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(64, 64, 64, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TopNavigationBar(),
                  //
                  //
                  //Hi my name is Ethan McKay ||| I am an App developer who uses flutter and dart Column

                  Row(
                    children: [
                      //
                      //
                      // Hi my name is Ethan McKay Text Row

                      SizedBox(
                        width: width * .48 * ('Hi my name is '.length / 'Hi my name is Ethan McKay'.length),
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            'Hi my name is ',
                            style: GoogleFonts.exo(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width * .48 * (14 / 25),
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            'Ethan McKay',
                            style: GoogleFonts.exo(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none,
                              color: lightRed,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'I am an ',
                        style: GoogleFonts.exo(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'App developer ',
                        style: GoogleFonts.exo(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          color: lightRed,
                        ),
                      ),
                      Text(
                        'who uses ',
                        style: GoogleFonts.exo(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Flutter ',
                        style: GoogleFonts.exo(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          color: lightRed,
                        ),
                      ),
                      Text(
                        'and ',
                        style: GoogleFonts.exo(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Dart',
                        style: GoogleFonts.exo(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          color: lightRed,
                        ),
                      ),
                    ],
                  ),
                  //
                  //
                  // Infomation Box Scroll
                  const SizedBox(height: 56),
                  SizedBox(
                    height: 500,
                    width: width,
                    child: ListView(
                      children: [
                        Text(
                          'Information',
                          style: GoogleFonts.exo(
                            fontSize: 48,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                            color: Colors.white,
                          ),
                        ),
                        //
                        //
                        //First Scrollin element
                        const SizedBox(height: 16),
                        SizedBox(
                          width: width,
                          height: 320,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: const [
                              Row(
                                children: [
                                  ProjectTemplate(
                                    title: 'Whats my \'why\'?',
                                    projectdescription:
                                        'Creating modern and easy to use apps with the needs of the customer at hand is an needed course of action to increase productivity for all users of the apps.',
                                  ),
                                  SizedBox(width: 64),
                                  ProjectTemplate(
                                    title: 'My Skills',
                                    projectdescription: 'I have experience in Front end Design and app development. It allows me to make clean and productive apps to push you forward. ',
                                  ),
                                  SizedBox(width: 64),
                                  ProjectTemplate(
                                    title: 'Who am I?',
                                    projectdescription:
                                        'I am a student at UWE studying Robotics with a passion for coding and Productivity apps. I always strive to improve my self by staying up to date with the latest technology.',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 64,
                        ),
                        Text(
                          'Projects ',
                          style: GoogleFonts.exo(
                            fontSize: 48,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        //
                        //
                        // Second Scrolling element
                        SizedBox(
                          width: width,
                          height: 320,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: const [
                              ProjectTemplate(),
                              SizedBox(width: 64),
                              ProjectTemplate(),
                              SizedBox(width: 64),
                              ProjectTemplate(),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 64,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
