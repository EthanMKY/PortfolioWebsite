import 'package:flutter/material.dart';
import 'package:portfoliowebsite/Constants.dart';

class ContactMeForm extends StatefulWidget {
  const ContactMeForm({super.key});

  @override
  State<ContactMeForm> createState() => ContactMeFormState();
}

class ContactMeFormState extends State<ContactMeForm> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return mobileview(width, 600)
        ? Column(
            children: [
              SizedBox(
                height: inputboxwidth(width, 600) / 1.5,
                width: inputboxwidth(width, 600) * 2.7,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmallInputBox(),
                        SmallInputBox(),
                        SmallInputBox(),
                      ],
                    ),
                    LargeInputBox()
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              )
            ],
          )
        : SizedBox(
            width: inputboxwidth(width, 600),
            height: (3 * (inputboxwidth(width, 600) / goldenRatio / 3.2)) +
                height * 0.08 +
                inputboxwidth(width, 600) / 1.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SmallInputBox(),
                SizedBox(
                  height: height * 0.02,
                ),
                const SmallInputBox(),
                SizedBox(
                  height: height * 0.02,
                ),
                const SmallInputBox(),
                SizedBox(
                  height: height * 0.02,
                ),
                const LargeInputBox()
              ],
            ),
          );
  }
}

double inputboxwidth(double width, double limit) {
  if (width < limit) {
    return width;
  } else {
    return limit;
  }
}

bool mobileview(width, limit) {
  if (width < 1300) {
    return false;
  } else {
    return true;
  }
}

class SmallInputBox extends StatefulWidget {
  const SmallInputBox({super.key});

  @override
  State<SmallInputBox> createState() => SmallInputBoxState();
}

class SmallInputBoxState extends State<SmallInputBox> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: inputboxwidth(width, 600) / goldenRatio / 3.2,
      width: inputboxwidth(width, 600),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 2),
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          color: const Color.fromARGB(255, 15, 15, 15),
        ),
      ),
    );
  }
}

class LargeInputBox extends StatefulWidget {
  const LargeInputBox({
    super.key,
  });
  @override
  State<LargeInputBox> createState() => LargeInputBoxState();
}

class LargeInputBoxState extends State<LargeInputBox> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: mobileview(width, 600)
          ? width * 927 / 1920
          : inputboxwidth(width, 600),
      height: inputboxwidth(width, 600) / 1.5,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 2),
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          color: const Color.fromARGB(255, 15, 15, 15),
        ),
      ),
    );
  }
}
