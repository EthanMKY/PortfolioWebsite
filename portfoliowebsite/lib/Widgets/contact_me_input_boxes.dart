import 'package:ethan_mckay_portfolio/Constants.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMeForm extends StatefulWidget {
  const ContactMeForm({super.key, this.hintText = ''});

  final String hintText;
  @override
  State<ContactMeForm> createState() => ContactMeFormState();
}

class ContactMeFormState extends State<ContactMeForm> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width,
      height: height,
      child: mobileview(width, 600)
          ? Column(
              children: [
                SizedBox(
                  height: inputboxwidth(width, 600) / 1.5,
                  width: inputboxwidth(width, 600) * 2.7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SmallInputBox(
                            controller: controller1,
                            hintText: 'Name',
                          ),
                          SmallInputBox(
                            controller: controller2,
                            hintText: 'Number',
                          ),
                          SmallInputBox(
                            controller: controller3,
                            hintText: 'Reason of Contact',
                          ),
                        ],
                      ),
                      SizedBox(
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
                          child: Material(
                            color: Colors.transparent,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: mobileview(width, 600)
                                        ? width * 927 / 1920
                                        : inputboxwidth(width, 600),
                                    height:
                                        inputboxwidth(width, 600) / 1.5 * .8,
                                    child: TextField(
                                      expands: true,
                                      minLines: null,
                                      maxLines: null,
                                      controller: controller4,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'Message',
                                          hintStyle: TextStyle(
                                            color: Colors.white,
                                            fontSize:
                                                inputboxwidth(width, 600) / 20,
                                          )),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize:
                                              inputboxwidth(width, 600) / 18),
                                    ),
                                  ),
                                  SizedBox(
                                    width: mobileview(width, 600)
                                        ? width * 927 / 1920
                                        : inputboxwidth(width, 600),
                                    height:
                                        inputboxwidth(width, 600) / 1.5 * .15,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Tooltip(
                                          message:
                                              'Pressing this will open a new tab of your default mail service',
                                          child: IconButton(
                                            iconSize:
                                                inputboxwidth(width, 600) /
                                                    1.5 *
                                                    .1,
                                            icon:
                                                const Icon(Icons.send_outlined),
                                            color: Colors.white,
                                            onPressed: () async {
                                              await launchUrl(
                                                Uri.parse(
                                                  "mailto:e.mckay@roseindustries.co.uk?subject=${controller3.text}&body=Message From ${controller1.text}, number ${controller2.text}: ${controller4.text},",
                                                ),
                                              );
                                            },
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
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
                  SmallInputBox(
                    controller: controller1,
                    hintText: 'Name',
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  SmallInputBox(
                    controller: controller2,
                    hintText: 'Number',
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  SmallInputBox(
                    controller: controller3,
                    hintText: 'Reason of Contact',
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  SizedBox(
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
                      child: Material(
                        color: Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              SizedBox(
                                width: mobileview(width, 600)
                                    ? width * 927 / 1920
                                    : inputboxwidth(width, 600),
                                height: inputboxwidth(width, 600) / 1.5 * .75,
                                child: TextField(
                                  expands: true,
                                  minLines: null,
                                  controller: controller4,
                                  maxLines: null,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Message',
                                      hintStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize:
                                            inputboxwidth(width, 600) / 20,
                                      )),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: inputboxwidth(width, 600) / 18),
                                ),
                              ),
                              SizedBox(
                                width: mobileview(width, 600)
                                    ? width * 927 / 1920
                                    : inputboxwidth(width, 600),
                                height: inputboxwidth(width, 600) / 1.5 * .15,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Tooltip(
                                      message:
                                          'Pressing this will open a new tab of your default mail service',
                                      child: IconButton(
                                        iconSize: inputboxwidth(width, 600) /
                                            1.5 *
                                            .1,
                                        icon: const Icon(Icons.send_outlined),
                                        color: Colors.white,
                                        onPressed: () async {
                                          await launchUrl(
                                            Uri.parse(
                                              "mailto:e.mckay@roseindustries.co.uk?subject=${controller3.text}&body=Message From ${controller1.text}, Number: ${number(controller2.text)} Message: ${controller4.text},",
                                            ),
                                          );
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
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
  const SmallInputBox(
      {super.key, required this.controller, this.hintText = ''});
  final TextEditingController controller;
  final String hintText;
  @override
  State<SmallInputBox> createState() => SmallInputBoxState();
}

class SmallInputBoxState extends State<SmallInputBox> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
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
        child: Material(
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              expands: true,
              minLines: null,
              maxLines: null,
              controller: widget.controller,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: widget.hintText,
                  hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: inputboxwidth(width, 600) / 20)),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: inputboxwidth(width, 600) / 18),
            ),
          ),
        ),
      ),
    );
  }
}

String number(number) {
  if (number == '') {
    return 'not provided';
  } else {
    return number;
  }
}
