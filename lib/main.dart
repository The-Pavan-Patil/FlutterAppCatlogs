//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:untitled/HomePage.dart';

void main(){
  runApp(Myapp());

}
 class Myapp extends StatelessWidget {
   const Myapp({Key? key}) : super(key: key);
 
   @override
   Widget build(BuildContext context) {

     return MaterialApp(
       home: HomePage());
   }
 }
 
