//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:untitled/Pages/HomePage.dart';
import 'package:untitled/Pages/LoginPage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/utils/myThemes.dart';
//import 'package:untitled/utils/routings.dart';
void main(){
  runApp(Myapp());

}
 class Myapp extends StatelessWidget {
   const Myapp({Key? key}) : super(key: key);
 
   @override
   Widget build(BuildContext context) {

     return MaterialApp(
       debugShowCheckedModeBanner: false,
       themeMode: ThemeMode.light,
       theme: myThemes.lighttheme(context),
       darkTheme: myThemes.darktheme(context),
     initialRoute: "/Home",
     routes: {
         "/"/*myRoute.loginRoute*/ : (context) => LoginPage(),
         "/Home"/*myRoute.homeRoute*/ : (context) => HomePage()
     },
     );

   }
 }
 
