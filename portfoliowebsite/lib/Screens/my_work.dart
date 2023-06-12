import 'package:ethan_mckay_portfolio/Constants.dart';

import 'package:ethan_mckay_portfolio/Widgets/project_box.dart';
import 'package:ethan_mckay_portfolio/Widgets/top_navigation_bar.dart';

import 'package:flutter/material.dart';

class MyWork extends StatefulWidget {
  @override
  const MyWork({
    super.key,
  });

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
    List<ProjectTemplate> projectboxes = [
      ProjectTemplate(
        width: width,
        height: height,
        projectname: 'My Skills',
        projectnum: 0,
        projectdescription:
            """The most important project anyone can have is themselves and their skills. I am constantly improving my skills and keeping up to date with the newest flutter and dart features and Information.""",
      ),
      ProjectTemplate(
        width: width,
        height: height,
        projectname: 'Maths Study Skills app',
        projectnum: 1,
        projectdescription:
            """The Purpose Of this app will be to help people who are study maths at A-levels and University, it will have features such as quizes, flashcards, note making and worksheet creation.""",
      ),
      ProjectTemplate(
        width: width,
        height: height,
        projectname: 'Graph Library',
        projectdescription:
            """This is a Flutter Package I will be creating for the Maths studying app which will help users graph functions, or work out Various intergrals, Differencials and other functions or data which is needing to be visualised.""",
        projectnum: 2,
      ),
      ProjectTemplate(
        width: width,
        height: height,
        projectname: 'Time Library',
        projectnum: 3,
        projectdescription: """This Flutter package was made to allow me to display various times, I am updating it to allow the user to be able to display times from other timezones.""",
      )
    ];

    return Container(
      decoration: BoxDecoration(gradient: homePageGradientDark),
      child: SizedBox(
        width: width,
        height: height,
        child: Column(children: [
          const TopNavigationBar(page: 'work'),
          SizedBox(
            height: height * .85,
            width: width,
            child: Row(
              children: [
                SizedBox(
                  height: height * .85,
                  width: width / 10,
                  child: TextButton(
                    style: ButtonStyle(
                      splashFactory: NoSplash.splashFactory,
                      shadowColor: MaterialStateProperty.all(Colors.transparent),
                    ),
                    onPressed: () {
                      if (index > 0) {
                        setState(() {
                          index--;
                        });
                      }
                    },
                    child: Text(
                      String.fromCharCode(Icons.chevron_left_outlined.codePoint),
                      style: TextStyle(
                        inherit: false,
                        color: Colors.red,
                        fontSize: width / 10,
                        fontWeight: FontWeight.w100,
                        fontFamily: Icons.chevron_right_outlined.fontFamily,
                        package: Icons.chevron_right_outlined.fontPackage,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: width * 0.8,
                  height: height * 0.7,
                  child: projectboxes[index],
                ),
                SizedBox(
                  height: height * .5,
                  width: width / 10,
                  child: TextButton(
                    onPressed: () {
                      if (index < projectboxes.length - 1) {
                        setState(() {
                          index++;
                        });
                      }
                    },
                    child: Text(
                      String.fromCharCode(Icons.chevron_right_outlined.codePoint),
                      style: TextStyle(
                        inherit: false,
                        color: Colors.red,
                        fontSize: width / 10,
                        fontWeight: FontWeight.w100,
                        fontFamily: Icons.chevron_right_outlined.fontFamily,
                        package: Icons.chevron_right_outlined.fontPackage,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
