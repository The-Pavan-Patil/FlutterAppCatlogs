
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/utils/routings.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  bool changedButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child:
      SingleChildScrollView(
        child: Column(children: [Image.asset(
          "assets/images/LoginImg.png",fit: BoxFit.cover,),
          SizedBox(
            height: 20,
          ),
          Text(
            "Welcome",style: TextStyle(fontSize: 24),),
          Text(
            "$name ",style: TextStyle(fontSize: 24),),
          SizedBox(
            height: 20,
          ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
          child: Column(
            children: [
              TextFormField(
              decoration: InputDecoration(hintText: "Enter Username",labelText: "Username"),
                onChanged: (value){ name= value; setState(() {});},
            ),
              TextFormField(
                decoration: InputDecoration(hintText: "Enter Password",labelText: "Password"),
              ),
               SizedBox(
                 height: 20,
               ),
               InkWell(
                 onTap: () async {
                   setState(() {
                     changedButton = true;
                   });
                   await Future.delayed(Duration(seconds: 1));
                   Navigator.pushNamed(context, myRoute.homeRoute );
                 },
                 child: AnimatedContainer(
                   duration: Duration(seconds: 1),
                   width: changedButton?50 : 150,
                   height: 50,
                   alignment: Alignment.center,

                   decoration: BoxDecoration(color: Colors.deepPurple,
                     borderRadius: BorderRadius.circular(changedButton?50 : 8),
                   ),
                   child:
                   changedButton?Icon(Icons.done, color: Colors.white,) :Text("Login", style: TextStyle(fontWeight: FontWeight.bold,
                         fontSize: 18,color: Colors.white,
                         fontFamily: GoogleFonts.lato().fontFamily
                   ),
                   ),
                 ),
               )





              // ElevatedButton(
              //   style: ElevatedButton.styleFrom(
              //     minimumSize: Size(100, 40),
              //   ),
              //   onPressed: () {Navigator.pushNamed(context, myRoute.homeRoute );},
              //   child: Text('Login'),
              // )
            ],
          ),
        )
        ]),
      ),
    );
  }
}
