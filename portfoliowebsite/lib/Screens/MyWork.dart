import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfoliowebsite/Constants.dart';
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
        decoration: BoxDecoration(gradient: amgradientdark),
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, height * 40 / 1080, 0, 0),
          child: ListView(
            dragStartBehavior: DragStartBehavior.down,
            scrollDirection: Axis.vertical,
            children: [
              SizedBox(
                height: height * 4294 / 1080,
                width: width,
                child: Column(
                  children: [
                    TopNavigationBar(
                      page: 'work',
                    ),
                    SizedBox(
                      height: height * 460 / 1080,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomPaint(
                          size: Size(
                            width * 1183 / 1920,
                            height * 733 / 1080,
                          ),
                          painter: Project0Painter(),
                        )
                      ],
                    )
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

class Project0Painter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double Radius = 74;
    final Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;

    canvas.drawLine(Offset(0, size.height), Offset(size.width - Radius, size.height), paint);

    //canvas.drawArc(rect, startAngle, sweepAngle, useCenter, paint)

    canvas.drawLine(Offset(size.width, Radius), Offset(size.width, size.height - Radius), paint);

    canvas.drawLine(Offset(0, 0), Offset(size.width - Radius, 0), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
