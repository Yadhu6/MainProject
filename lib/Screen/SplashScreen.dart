import 'dart:async';

import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'MainScreen.dart';

class Splashscreen extends StatefulWidget {

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  
  void initState() {
    Timer(Duration(seconds: 5), () {
      
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MainScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.grey,
        child: Center(
          child: Column(
            children: [
              Image(image: AssetImage('assets/items/HamBurger.jpg')),
              Text(' K M Restaurant ',style: TextStyle(fontSize: 40,fontStyle: FontStyle.italic),),
            ],
          ),
        )
      ),
    );
  }
}
