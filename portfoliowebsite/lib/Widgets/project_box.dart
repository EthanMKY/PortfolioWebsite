import 'package:ethan_mckay_portfolio/Constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectTemplate extends StatelessWidget {
  const ProjectTemplate(
      {super.key,
      this.left = true,
      required this.width,
      required this.height,
      required this.projectnum,
      required this.projectname});

  final double projectnum;
  final String projectname;
  final bool left;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: left ? MainAxisAlignment.start : MainAxisAlignment.end,
      children: [
        SizedBox(
          width: projectBoxWidth(width, projectBoxLimit),
          height: projectBoxHeight(width, projectBoxLimit),
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 96, 96),
              borderRadius: left
                  ? const BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    )
                  : const BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomLeft: Radius.circular(50),
                    ),
            ),
            child: Row(
              mainAxisAlignment:
                  left ? MainAxisAlignment.start : MainAxisAlignment.end,
              children: [
                Container(
                  width: (projectBoxWidth(width, projectBoxLimit) * 0.984),
                  height: (projectBoxHeight(width, projectBoxLimit) * 0.967),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 15, 15, 15),
                    borderRadius: left
                        ? const BorderRadius.only(
                            topRight: Radius.circular(40),
                            bottomRight: Radius.circular(40),
                          )
                        : const BorderRadius.only(
                            topLeft: Radius.circular(40),
                            bottomLeft: Radius.circular(40),
                          ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Project $projectnum: $projectname',
                        style: GoogleFonts.exo(
                          fontSize: projectBoxWidth(width, projectBoxLimit) *
                              50 /
                              1920,
                          decoration: TextDecoration.none,
                          color: lightRed,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

double projectBoxWidth(width, limit) {
  if (width < limit) {
    return width;
  } else {
    return limit;
  }
}

double projectBoxHeight(width, limit) {
  if (width < limit) {
    return width / goldenRatio;
  } else {
    return limit / goldenRatio;
  }
}
