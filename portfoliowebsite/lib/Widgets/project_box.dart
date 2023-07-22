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

//Creating modern and easy to use apps with the needs of the customer at hand is an needed course of action to increase productivity for all users of the apps