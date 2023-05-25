// ignore_for_file: file_names

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfoliowebsite/Constants.dart';
import 'package:portfoliowebsite/Widgets/ProjectBox.dart';
import 'package:portfoliowebsite/Widgets/TopNavigationBar.dart';

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
    return SizedBox(
      width: width,
      height: height,
      child: Container(
        decoration: BoxDecoration(gradient: myWorkGradientDark),
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, height * 40 / 1080, 0, 0),
          child: ListView(
            dragStartBehavior: DragStartBehavior.down,
            scrollDirection: Axis.vertical,
            children: [
              SizedBox(
                height: (height * 1000 / 1080) +
                    (projectBoxHeight(width, projectBoxLimit) * 4) +
                    50,
                width: width,
                child: Column(
                  children: [
                    const TopNavigationBar(
                      page: 'work',
                    ),
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
    );
  }
}
