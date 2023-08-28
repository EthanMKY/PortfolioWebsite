import 'package:ethan_mckay_portfolio/Constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectTemplate extends StatelessWidget {
  const ProjectTemplate({
    super.key,
    required this.width,
    required this.height,
    required this.projectnum,
    this.twoPicture = true,
    required this.projectname,
    this.projectdescription = "",
  });
  final bool twoPicture;
  final String projectnum;
  final String projectname;
  final String projectdescription;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    double projectBoxWidth = ProjectBoxWidth(width * 0.75, projectBoxLimit, MobileView(width, width / height));
    double projectBoxHeight = ProjectBoxHeight(width * 0.75, projectBoxLimit, MobileView(width, width / height));
    return SizedBox(
      width: projectBoxWidth,
      height: projectBoxHeight,
      child: Row(
        children: [
          // first half of project box,
          SizedBox(
              width: projectBoxWidth * .5,
              height: projectBoxHeight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Project $projectnum',
                    style: GoogleFonts.exo(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      textStyle: TextStyle(decoration: TextDecoration.none, fontSize: height * 64 / 1080),
                    ),
                  ),
                  Text(
                    projectname,
                    style: GoogleFonts.exo(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      textStyle: TextStyle(decoration: TextDecoration.none, fontSize: height * 48 / 1080),
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    projectdescription,
                    maxLines: 5,
                    style: GoogleFonts.exo(
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                      textStyle: TextStyle(decoration: TextDecoration.none, fontSize: height * 32 / 1080),
                    ),
                  )
                ],
              )),
          // second half of project box
          SizedBox(
            width: projectBoxWidth * .5,
            height: projectBoxHeight,
            child: twoPicture
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: projectBoxWidth * 0.2,
                        height: projectBoxHeight * 0.8,
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: projectBoxWidth * 0.2,
                        height: projectBoxHeight * 0.8,
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                : Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: projectBoxWidth * 0.5,
                        height: projectBoxHeight * 0.7,
                        child: Container(
                          color: Colors.white,
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
