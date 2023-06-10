import 'package:ethan_mckay_portfolio/Constants.dart';
import 'package:ethan_mckay_portfolio/Widgets/project_box.dart';
import 'package:ethan_mckay_portfolio/Widgets/top_navigation_bar.dart';
import 'package:flutter/gestures.dart';
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
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    //double textScaleFactor = MediaQuery.of(context).textScaleFactor;
    //TextStyle? headLineTheme = Theme.of(context).textTheme.headlineMedium;
    return SizedBox(
      width: width,
      height: height,
      child: Container(
        decoration: BoxDecoration(gradient: homePageGradientDark),
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, height * 40 / 1080, 0, 0),
          child: SizedBox(
            width: width,
            height: height,
            child: ListView(
              dragStartBehavior: DragStartBehavior.down,
              scrollDirection: Axis.vertical,
              children: [
                const TopNavigationBar(
                  page: 'work',
                ),
                SizedBox(
                  height: (height * 1000 / 1080) + (projectBoxHeight(width, projectBoxLimit) * 4) + 50,
                  width: width,
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 400 / 1080,
                      ),
                      ProjectTemplate(
                        width: width,
                        height: height,
                        projectname: 'My Skills',
                        projectnum: 0,
                        left: true,
                      ),
                      SizedBox(
                        height: height * 175 / 1080,
                      ),
                      ProjectTemplate(
                        width: width,
                        height: height,
                        projectname: 'Maths Study Skills app',
                        projectnum: 1,
                        left: false,
                      ),
                      SizedBox(
                        height: height * 175 / 1080,
                      ),
                      ProjectTemplate(
                        width: width,
                        height: height,
                        projectname: 'Graph Library',
                        projectnum: 2,
                      ),
                      SizedBox(
                        height: height * 175 / 1080,
                      ),
                      ProjectTemplate(
                        width: width,
                        height: height,
                        projectname: 'Time Library',
                        projectnum: 3,
                        left: false,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
