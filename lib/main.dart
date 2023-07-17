//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:untitled/Pages/HomePage.dart';
import 'package:untitled/Pages/LoginPage.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(Myapp());

}
 class Myapp extends StatelessWidget {
   const Myapp({Key? key}) : super(key: key);
 
   @override
   Widget build(BuildContext context) {

     return MaterialApp(

       themeMode: ThemeMode.light,

       theme: ThemeData(primarySwatch: Colors.blue, fontFamily: GoogleFonts.lato().fontFamily/* primaryTextTheme: GoogleFonts.latoTextTheme()*/ ),
       darkTheme: ThemeData( brightness: Brightness.dark),
     //initialRoute: "/Home",
     routes: {
         "/" : (context) => LoginPage(),
       "/Home" : (context) => HomePage()
     },
     );

   }
 }
 
