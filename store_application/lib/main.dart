import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store_application/screens/checkout.dart';
import 'package:store_application/color_schemes.g.dart';
 
void main() {runApp(MyApp());}
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Store Application',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
        fontFamily: GoogleFonts.notoSansArabic().fontFamily,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
        fontFamily: GoogleFonts.notoSansArabic().fontFamily,
      ),
      home: CheckoutPage(),
    );
  }
}