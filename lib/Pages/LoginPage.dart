
import 'package:flutter/material.dart';
import 'package:untitled/utils/routings.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
          SizedBox(
            height: 20,
          ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
          child: Column(
            children: [
              TextFormField(
              decoration: InputDecoration(hintText: "Enter Username",labelText: "Username"),
            ),
              TextFormField(
                decoration: InputDecoration(hintText: "Enter Password",labelText: "Password"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(100, 40),
                ),
                onPressed: () {Navigator.pushNamed(context, myRoute.homeRoute );},
                child: Text('Login'),
              )
            ],
          ),
        )
        ]),
      ),
    );
  }
}
