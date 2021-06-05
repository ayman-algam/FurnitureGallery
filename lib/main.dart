import 'package:flutter/material.dart';
import 'package:furniture/constants.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Screens/product/screen_01_products.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Furniture Gallery',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        primaryColor: kPrimaryColor,
        accentColor: kPrimaryColor,


        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      home: ProductsScreen()
    );
  }
}