import 'package:ethan_mckay_portfolio/Constants.dart';
import 'package:ethan_mckay_portfolio/Widgets/project_box.dart';
import 'package:ethan_mckay_portfolio/Widgets/top_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return SizedBox(
      width: width,
      height: height,
      child: Container(
        decoration: const BoxDecoration(color: Colors.black),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(64, 64, 64, 0),
          child: Column(
            children: [
              const TopNavigationBar(),
              Expanded(
                child: Container(),
              ),
              SizedBox(
                width: width,
                height: height * .8,
                child: ListView(
                  children: [
                    const ProjectPageProjectShowcasePanel(
                      projectnumber: 'One',
                      title: 'Math study app',
                    ),
                    Divider(
                      height: 5,
                      color: lightRed,
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    const ProjectPageProjectShowcasePanel(
                      projectnumber: 'Two',
                      title: 'Holiday house website',
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
