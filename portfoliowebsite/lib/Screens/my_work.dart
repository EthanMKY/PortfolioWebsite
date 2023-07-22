import 'package:ethan_mckay_portfolio/Widgets/top_navigation_bar.dart';
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
        child: const Padding(
          padding: EdgeInsets.all(64),
          child: Column(
            children: [
              TopNavigationBar(),
            ],
          ),
        ),
      ),
    );
  }
}
