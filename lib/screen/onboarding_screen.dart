import 'package:chatbot/helper/global.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(children: [

        Lottie.asset('assets/lottie/askme.json' , height: mq.height * .7),

        //title
        const Text('Ask me Anything !' , 
        style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w900 , letterSpacing: .5),
        ),

        SizedBox(height: mq.height * .015),

         //title
        SizedBox( 
        width: mq.width * .7,  
        child: Text('I can be your best Firend & you can ask anything & I can help you ! ' , 
        textAlign: TextAlign.center, 
        style: TextStyle(fontSize: 13.5  , letterSpacing: .5, color: Colors.black54),
        ),
        ),
        const Spacer(),
        //dots
        Wrap(
          spacing: 10,
          children:List.generate(
          2, 
          (i) => 
          Container(
            width: 10,
            height: 8,
            decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(5))),
            )) ,
            ),


            const Spacer(),


            //botton
            ElevatedButton(
              
              style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(), 
              elevation: 0,
              textStyle: 
              const TextStyle(fontSize: 16,fontWeight: FontWeight.w500),
              
              minimumSize: Size(mq.width *.4, 50)),
              onPressed: () {}, 
              child: const Text('Next')),
            
            const Spacer(flex: 2),        
              
      ],
      ),

    );
  }
}