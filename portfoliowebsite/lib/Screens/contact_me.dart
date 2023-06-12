// ignore_for_file: file_names

import 'package:ethan_mckay_portfolio/Constants.dart';
import 'package:ethan_mckay_portfolio/Widgets/top_navigation_bar.dart';
import 'package:ethan_mckay_portfolio/Widgets/contact_me_input_boxes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    double fontsize1 = textBoxSize(width, 1000) * 0.038;
    return SizedBox(
      height: height * 0.9,
      width: width,
      child: ListView(
        children: [
          Container(
            decoration: BoxDecoration(gradient: contactMeGradientDark),
            child: Column(
              children: [
                TopNavigationBar(page: 'contact'),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    width * 95 / 1920,
                    0,
                    width * 95 / 1920,
                    0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: height * 89 / 1080 - (height * 0.02),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: width * 55 / 1920,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: textBoxSize(width, 1000) * 0.8,
                                height: textBoxSize(width, 1000) / 20,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: textBoxSize(width, 1000) / 20,
                                      width: width * contactmedescriptionp1.length / totallinelength,
                                      child: FittedBox(
                                        fit: BoxFit.fitWidth,
                                        child: Text(
                                          contactmedescriptionp1,
                                          style: GoogleFonts.exo(fontSize: fontsize1, color: Colors.white, decoration: TextDecoration.none),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: textBoxSize(width, 1000) / 20,
                                      width: width * contactmedescriptionp2.length / totallinelength,
                                      child: FittedBox(
                                        fit: BoxFit.fitWidth,
                                        child: Text(
                                          contactmedescriptionp2,
                                          style: GoogleFonts.exo(fontSize: fontsize1, color: const Color.fromARGB(255, 255, 96, 96), decoration: TextDecoration.none),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: textBoxSize(width, 1000) / 20,
                                      width: width * contactmedescriptionp3.length / totallinelength,
                                      child: FittedBox(
                                        fit: BoxFit.fitWidth,
                                        child: Text(
                                          contactmedescriptionp3,
                                          style: GoogleFonts.exo(fontSize: fontsize1, color: Colors.white, decoration: TextDecoration.none),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: textBoxSize(width, 1000) / 20,
                                      width: width * contactmedescriptionp4.length / totallinelength,
                                      child: FittedBox(
                                        fit: BoxFit.fitWidth,
                                        child: Text(
                                          contactmedescriptionp4,
                                          style: GoogleFonts.exo(fontSize: fontsize1, color: const Color.fromARGB(255, 255, 96, 96), decoration: TextDecoration.none),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    height: textBoxSize(width, 1000) / 20,
                                    width: width * contactmedescriptionp5.length / totallinelength,
                                    child: FittedBox(
                                      fit: BoxFit.fitWidth,
                                      child: Text(
                                        contactmedescriptionp5,
                                        style: GoogleFonts.exo(fontSize: fontsize1, color: const Color.fromARGB(255, 255, 96, 96), decoration: TextDecoration.none),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: textBoxSize(width, 1000) / 20,
                                    width: width * contactmedescriptionp6.length / totallinelength,
                                    child: FittedBox(
                                      fit: BoxFit.fitWidth,
                                      child: Text(
                                        contactmedescriptionp6,
                                        style: GoogleFonts.exo(fontSize: fontsize1, color: Colors.white, decoration: TextDecoration.none),
                                      ),
                                    ),
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
                      const Center(child: ContactMeForm())
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

double textBoxSize(width, limit) {
  if (width < limit) {
    return width - (width * 95 / 1920) * 2;
  } else {
    return limit;
  }
}
