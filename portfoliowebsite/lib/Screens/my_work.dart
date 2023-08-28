import 'package:ethan_mckay_portfolio/Constants.dart';
import 'package:ethan_mckay_portfolio/Widgets/project_box.dart';
import 'package:ethan_mckay_portfolio/Widgets/top_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyWork extends StatefulWidget {
  @override
  const MyWork({super.key});

  @override
  State<MyWork> createState() => _MyWorkState();
}

class _MyWorkState extends State<MyWork> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    //
    List<Widget> projectboxes = [
      ProjectTemplate(
        width: width,
        height: height,
        projectname: 'My Skills',
        projectnum: "One",
        twoPicture: false,
        projectdescription:
            """The most important project anyone can have is themselves and their skills. I am constantly improving my skills and keeping up to date with the newest flutter and dart features and Information.""",
      ),
      SizedBox(
        height: 32,
        child: Center(
          child: Divider(
            color: lightRed,
            thickness: 3,
          ),
        ),
      ),
      ProjectTemplate(
        width: width,
        height: height,
        projectname: 'Maths Study Skills app',
        projectnum: "Two",
        twoPicture: true,
        projectdescription:
            """The Purpose Of this app will be to help people who are study maths at A-levels and University, it will have features such as quizes, flashcards, note making and worksheet creation.""",
      ),
      SizedBox(
        height: 32,
        child: Center(
          child: Divider(color: lightRed, thickness: 3),
        ),
      ),
      ProjectTemplate(
        width: width,
        height: height,
        projectname: 'Graph Library',
        twoPicture: false,
        projectdescription:
            """This is a Flutter Package I will be creating for the Maths studying app which will help users graph functions, or work out Various intergrals, Differencials and other functions or data which is needing to be visualised.""",
        projectnum: "Two",
      ),
      SizedBox(
        height: 32,
        child: Center(
          child: Divider(
            color: lightRed,
            thickness: 3,
          ),
        ),
      ),
      ProjectTemplate(
        width: width,
        height: height,
        projectname: 'Time Library',
        projectnum: "Three",
        projectdescription: """This Flutter package was made to allow me to display various times, I am updating it to allow the user to be able to display times from other timezones.""",
      )
    ];

    return Container(
      decoration: BoxDecoration(gradient: projectbackground),
      child: SizedBox(
        width: width,
        height: height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const TopNavigationBar(page: 'work'),
            SizedBox(
              width: width * 0.8,
              height: height * 0.8,
              child: ListView(
                children: projectboxes,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
