import 'package:ethan_mckay_portfolio/Constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactMeTextColumn extends StatefulWidget {
  const ContactMeTextColumn({super.key});

  @override
  State<ContactMeTextColumn> createState() => _ContactMeTextColumnState();
}

class _ContactMeTextColumnState extends State<ContactMeTextColumn> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return SizedBox(
      width: width * 0.85,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: width * contactmedescriptionp1.length / totallinelength,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    contactmedescriptionp1,
                    style: GoogleFonts.exo(color: Colors.white, decoration: TextDecoration.none),
                  ),
                ),
              ),
              SizedBox(
                width: width * contactmedescriptionp2.length / totallinelength,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    contactmedescriptionp2,
                    style: GoogleFonts.exo(color: const Color.fromARGB(255, 255, 96, 96), decoration: TextDecoration.none),
                  ),
                ),
              ),
              SizedBox(
                width: width * contactmedescriptionp3.length / totallinelength,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    contactmedescriptionp3,
                    style: GoogleFonts.exo(color: Colors.white, decoration: TextDecoration.none),
                  ),
                ),
              ),
              SizedBox(
                width: width * contactmedescriptionp4.length / totallinelength,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    contactmedescriptionp4,
                    style: GoogleFonts.exo(color: const Color.fromARGB(255, 255, 96, 96), decoration: TextDecoration.none),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: width * contactmedescriptionp5.length / totallinelength,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    contactmedescriptionp5,
                    style: GoogleFonts.exo(color: const Color.fromARGB(255, 255, 96, 96), decoration: TextDecoration.none),
                  ),
                ),
              ),
              SizedBox(
                width: width * contactmedescriptionp6.length / totallinelength,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    contactmedescriptionp6,
                    style: GoogleFonts.exo(color: Colors.white, decoration: TextDecoration.none),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
