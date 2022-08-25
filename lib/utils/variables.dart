import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ColorItems {
  //static const Color mainRedColor = Color.fromARGB(255, 126, 23, 18);
  static const Color facebookButtonColor = Color.fromARGB(255, 74, 97, 168);
  static const Color googleButtonColor = Color.fromARGB(255, 83, 160, 244);
  static const Color generalTurquaseColor = Color.fromARGB(156, 7, 214, 207);
  static const Color greyBackgroundColor = Color.fromARGB(255, 25, 25, 25);
  static const Color softGreyColor = Color.fromARGB(51, 255, 255, 255);
}

class StringItems {
  static const String projectName = 'Eats App';
}

class ImageItems {
  static AssetImage backgroundImage = const AssetImage('assets/background.png');
  static AssetImage creditcardImage = const AssetImage('assets/creditcard.png');
  static AssetImage profileImage = const AssetImage('assets/profilepicture.png');
  static AssetImage hamburger1 = const AssetImage('assets/hamburger1.png');
  static AssetImage kebab1 = const AssetImage('assets/kebab1.png');
  static AssetImage nooddle1 = const AssetImage('assets/nooddle1.png');
  static AssetImage pancake1 = const AssetImage('assets/pancake1.png');
  static AssetImage pizza1 = const AssetImage('assets/pizza1.png');
  static AssetImage sandwich1 = const AssetImage('assets/sandwich1.png');
  static AssetImage biryani1 = const AssetImage('assets/biryani.png');
  static AssetImage biryani2 = const AssetImage('assets/biryani2.png');
}

class FontItems {
  static TextStyle normalTextInter18 = GoogleFonts.inter(
    fontSize: 18,
    color: Colors.white,
  );
  static TextStyle normalTextInter14 = GoogleFonts.inter(
    fontSize: 18,
    color: Colors.white,
  );

  static TextStyle boldTextInter20 = GoogleFonts.inter(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold);
  static TextStyle boldTextInter16 = GoogleFonts.inter(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold);

  static TextStyle normalTextWorkSans16 = GoogleFonts.workSans(fontSize: 16, color: Colors.white);
  static TextStyle boldTextWorkSans20 =
      GoogleFonts.workSans(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold);
  static TextStyle boldTextInter24 = GoogleFonts.inter(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold);

  static TextStyle normalTextStyle16 = const TextStyle(fontSize: 16, color: Colors.white);
  static TextStyle normalTextStyle20 = const TextStyle(fontSize: 20, color: Colors.white);
  static TextStyle normalTextStyle14 = const TextStyle(fontSize: 14, color: Colors.white);
}
