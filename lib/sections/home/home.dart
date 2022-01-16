import 'package:flutter/material.dart';
import 'package:folio/sections/home/homeDesktop.dart';
import 'package:folio/sections/home/homeMobile.dart';
import 'package:folio/sections/home/homeTab.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatefulWidget {
  static const intro = 'STEP IN. EXPERIENCE JOY.';
  static const headlineRow1 = 'KEK';
  static const headlineRow2 = 'TECH';
  static const animatedText = [
    " Education",
    " Games",
    " Health",
  ];
  static const image = 'images/kek_square_1024x1024.png';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: HomeMobile(),
      tablet: HomeTab(),
      desktop: HomeDesktop(),
    );
  }
}
