import 'package:ethan_mckay_portfolio/Constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectTemplate extends StatelessWidget {
  const ProjectTemplate({
    super.key,
    required this.width,
    required this.height,
    required this.projectnum,
    required this.projectname,
    this.projectdescription = "",
  });

  final double projectnum;
  final String projectname;
  final String projectdescription;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    double aspectRatio = width / height;
    double projectBoxWidth = ProjectBoxWidth(width * 0.75, projectBoxLimit, MobileView(width, aspectRatio));
    double projectBoxHeight = ProjectBoxHeight(width * 0.75, projectBoxLimit, MobileView(width, aspectRatio));
    return SizedBox(
      width: projectBoxWidth,
      height: projectBoxHeight,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: Color.fromARGB(255, 255, 96, 96),
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(40),
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              width: projectBoxWidth * 0.8,
              height: projectBoxHeight * 0.05,
              child: FittedBox(
                fit: BoxFit.fitHeight,
                child: Text(
                  'Project $projectnum: $projectname',
                  style: GoogleFonts.exo(
                    decoration: TextDecoration.none,
                    color: lightRed,
                  ),
                ),
              ),
            ),
            SizedBox(height: height * .025),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width / 20),
              child: Text(
                projectdescription,
                style: GoogleFonts.exo(
                  fontSize: width < height ? width / 30 : height / 30,
                  decoration: TextDecoration.none,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
