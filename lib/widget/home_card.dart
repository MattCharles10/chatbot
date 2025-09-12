import 'package:chatbot/helper/global.dart';
import 'package:chatbot/model/home_type.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeCard extends StatelessWidget {

  final HomeType homeType;

  const HomeCard({super.key,required this.homeType});

  @override
  Widget build(BuildContext context) {
    return Card(
      // ignore: deprecated_member_use
      color : Colors.blue.withOpacity(.4),
      elevation: 0,
      margin: EdgeInsets.only(bottom: mq.height * .02),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
      child: homeType.leftAlign 
      ? Row(
      children: [

       
        Container(
           width: mq.width * .35,
          padding: homeType.Padding,
          child: Lottie.asset('assets/lottie/${homeType.lottie}',),
        ),

    const Spacer(),

        Text(homeType.title,
        style: const TextStyle(
          color: Colors.black,fontSize:17,fontWeight: FontWeight.w500 , letterSpacing: 1 ),
          ),

        const Spacer(
          flex: 2
        ),  

      ],
      )
      : Row(
      children: [

    const Spacer(flex: 2),

        Text(homeType.title,
        style: const TextStyle(
          color: Colors.black,fontSize:17,fontWeight: FontWeight.w500 , letterSpacing: 1 ),
          ),

        const Spacer(
          flex: 2
        ),  
        
        Container(
           width: mq.width * .35,
          padding: homeType.Padding,
          child: Lottie.asset('assets/lottie/${homeType.lottie}',),
        ),


      ],
      ),
      );
  }
}