import 'package:ethan_mckay_portfolio/Screens/home_page.dart';
import 'package:ethan_mckay_portfolio/Screens/my_work.dart';
import 'package:ethan_mckay_portfolio/Screens/contact_me.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  Paint.enableDithering = true;
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'EthanMckayPortfolio',
      color: const Color.fromARGB(255, 255, 96, 96),
      debugShowCheckedModeBanner: false,
      routeInformationParser: VxInformationParser(),
      routerDelegate: VxNavigator(
        notFoundPage: (uri, params) {
          return VxRoutePage(child: const Text('page not found'));
        },
        routes: {
          "/": (uri, params) {
            return VxRoutePage(
              child: MobileTodesktopView(
                desktopView: const HomePageDesktop(),
                mobileView: Container(
                  color: Colors.pink,
                ),
              ),
              transition: null,
            );
          },
          "/MyWork": (uri, params) {
            return VxRoutePage(
              child: MobileTodesktopView(
                desktopView: const MyWork(),
                mobileView: Container(
                  color: Colors.pink,
                ),
              ),
              transition: null,
            );
          },
          "/ContactMe": (uri, params) {
            return VxRoutePage(
              child: MobileTodesktopView(
                desktopView: const ContactMe(),
                mobileView: Container(
                  color: Colors.pink,
                ),
              ),
              transition: null,
            );
          }
        },
      ),
    );
  }
}

class MobileTodesktopView extends StatefulWidget {
  const MobileTodesktopView({super.key, required this.mobileView, required this.desktopView});
  final Widget mobileView;
  final Widget desktopView;

  @override
  State<MobileTodesktopView> createState() => _MobileTodesktopViewState();
}

class _MobileTodesktopViewState extends State<MobileTodesktopView> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return width < 450 ? widget.mobileView : widget.desktopView;
  }
}
