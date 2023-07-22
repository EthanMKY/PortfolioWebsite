import 'package:ethan_mckay_portfolio/Constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectTemplate extends StatelessWidget {
  const ProjectTemplate({
    super.key,
    this.width = 3,
    this.height = 3,
    this.projectnum = 3,
    this.title = '',
    this.projectdescription = "",
  });

  final double projectnum;
  final String title;
  final String projectdescription;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 555,
      height: 316,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: lightRed,
            width: 5,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.exo(
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.none,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              SizedBox(
                width: 500,
                height: 230,
                child: Text(
                  projectdescription,
                  style: GoogleFonts.exo(
                    fontWeight: FontWeight.w300,
                    fontSize: 28,
                    decoration: TextDecoration.none,
                    color: Colors.black,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectPageProjectShowcasePanel extends StatelessWidget {
  const ProjectPageProjectShowcasePanel({super.key, required this.projectnumber, required this.title});
  final String projectnumber;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1700,
      height: 700,
      child: Row(
        children: [
          //
          //
          // Project Number, title and descriptions
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Project $projectnumber',
                style: GoogleFonts.exo(
                  fontSize: 72,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                  color: Colors.white,
                ),
              ),
              Text(
                title,
                style: GoogleFonts.exo(
                  fontSize: 48,
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.none,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 48,
              ),
              SizedBox(
                height: 236,
                width: 814,
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                  style: GoogleFonts.exo(
                    fontSize: 36,
                    fontWeight: FontWeight.w300,
                    decoration: TextDecoration.none,
                    color: Colors.white,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 10000,
                ),
              )
            ],
          ),
          //
          //
          //Pictures
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 96,
                  ),
                  SizedBox(
                    width: 375,
                    height: 667,
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 32,
                  ),
                  SizedBox(
                    width: 375,
                    height: 667,
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
