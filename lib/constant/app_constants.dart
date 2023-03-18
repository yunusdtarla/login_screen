import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sabitler {
  static final TextStyle genelText = GoogleFonts.notoSans(
    color: Colors.white,
    fontSize: 30.0,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle butonText = GoogleFonts.notoSans(
    fontSize: 18.0,
  );
  static final TextStyle hintText = GoogleFonts.notoSans(fontSize: 13);

  static const Color genelRenk = Color.fromARGB(255, 90, 181, 203);
  static final BoxDecoration inputStyle = BoxDecoration(
    color: Colors.cyan.shade100,
    borderRadius: BorderRadius.circular(10.0),
    // ignore: prefer_const_literals_to_create_immutables
    boxShadow: [
      // ignore: prefer_const_constructors
      BoxShadow(
        color: Colors.black12,
        blurRadius: 6.0,
        offset: const Offset(0, 2),
      ),
    ],
  );
}
