import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personalfortfolio/layout.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner:false,
      title:'dash',
      theme:ThemeData(scaffoldBackgroundColor:Colors.white,
      textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme).apply(bodyColor:Colors.black),
      pageTransitionsTheme: PageTransitionsTheme(builders:{TargetPlatform.iOS:FadeUpwardsPageTransitionsBuilder(),
      TargetPlatform.android:FadeUpwardsPageTransitionsBuilder()}), 
      primaryColor: Colors.blue ),
      home: SiteLayout(),
    );
  }
}