import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfoliowebsite/Constants.dart';
import 'package:portfoliowebsite/Widgets/TopNavigationBar.dart';

class ContactMe extends StatefulWidget {
  const ContactMe({super.key});

  @override
  State<ContactMe> createState() => _ContactMeState();
}

class _ContactMeState extends State<ContactMe> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double fontsize1 = width * 40 / 1920;
    return SizedBox(
      height: height,
      width: width,
      child: Container(
        decoration: BoxDecoration(
          gradient: myWorkGradientDark,
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            width * 95 / 1920,
            height * 40 / 1080,
            0,
            0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopNavigationBar(page: 'contact'),
              SizedBox(
                height: height * 89 / 1080,
              ),
              Row(
                children: [
                  SizedBox(
                    width: width * 55 / 1920,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Wondering how to ',
                            style: GoogleFonts.exo(fontSize: fontsize1, color: Colors.white, decoration: TextDecoration.none),
                          ),
                          Text(
                            'start ',
                            style: GoogleFonts.exo(fontSize: fontsize1, color: const Color.fromARGB(255, 255, 96, 96), decoration: TextDecoration.none),
                          ),
                          Text(
                            'our ',
                            style: GoogleFonts.exo(fontSize: fontsize1, color: Colors.white, decoration: TextDecoration.none),
                          ),
                          Text(
                            'journey together?',
                            style: GoogleFonts.exo(fontSize: fontsize1, color: const Color.fromARGB(255, 255, 96, 96), decoration: TextDecoration.none),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Lets connect ',
                            style: GoogleFonts.exo(fontSize: fontsize1, color: const Color.fromARGB(255, 255, 96, 96), decoration: TextDecoration.none),
                          ),
                          Text(
                            'via email!',
                            style: GoogleFonts.exo(fontSize: fontsize1, color: Colors.white, decoration: TextDecoration.none),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: height * 90 / 1080,
              ),
              SizedBox(
                height: height * 486 / 1080,
                width: width * 1621 / 1920,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: height * 128 / 1080,
                          width: width * 600 / 1920,
                          child: Container(
                            decoration: BoxDecoration(color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: height * 128 / 1080,
                          width: width * 600 / 1920,
                          child: Container(
                            decoration: BoxDecoration(color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: height * 128 / 1080,
                          width: width * 600 / 1920,
                          child: Container(
                            decoration: BoxDecoration(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: width * 927 / 1920,
                      height: height * 486 / 1080,
                      child: Container(
                        decoration: BoxDecoration(color: Colors.white),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
