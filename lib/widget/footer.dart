import 'package:flutter/material.dart';
import 'package:folio/constants.dart';
import 'package:folio/provider/themeProvider.dart';
import 'package:folio/widget/adaptiveText.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.fromLTRB(0, height * 0.05, 0, 0),
      height: height * 0.07,
      width: width,
      color: _themeProvider.lightTheme ? Colors.white : Colors.grey[900],
      child: Center(
        child: AdaptiveText(
          "Kek Tech Limited: Registered in England and Wales, Company No. 13800840." +
              "\nWebsite Design: Copyright © 2020 Muhammad Hamza. Distributed under the MIT License.",
          textAlign: TextAlign.center,
          style: GoogleFonts.manrope(
            fontSize: 8,
            fontWeight: FontWeight.w300,
            color: _themeProvider.lightTheme ? Colors.black : Colors.white,
          ),
        ),
      ),
    );
  }
}
