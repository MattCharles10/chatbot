import 'package:chatbot/helper/global.dart';

import 'package:flutter/material.dart';

import '../helper/global.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';




class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State <SplashScreen> createState() =>  _SplashScreenState();
}

class  _SplashScreenState extends State <SplashScreen> {
  @override
  Widget build(BuildContext context) {

    //initializing device size
    mq=MediaQuery.sizeOf(context); 
    return Scaffold(

      body:Center(
        child: Card(
        color: Colors.blue,  
        shape:const RoundedRectangleBorder (
          borderRadius:BorderRadius.all(Radius.circular(20))),
          child: Padding(
            padding: EdgeInsets.all(mq.width* .05),
            child: Image.asset('assets/images/logo.png', 
            width:mq.width*.45
            ),
          ),
          ),
          ),
          );


  }
}