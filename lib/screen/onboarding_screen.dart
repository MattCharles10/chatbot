import 'package:chatbot/helper/global.dart';
import 'package:chatbot/model/onbord.dart';
import 'package:chatbot/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final c = PageController( );

    final list = [
      
    Onbord(
    //onboarding 1  
    title: 'Ask me Anything ', 
    subtitle: 'I can be your best Firend & you can ask anything & I can help you !', 
    lottie: 'askme'
    ),
     
   Onbord(
    // Onboarding for Pharmai
    title: 'Welcome to PharmAi',
    subtitle: 'Your smart healthcare companion. Get instant medicine info, dosage guidance, and health support anytime!',
    lottie: 'pharmAi',
    
   ),
   
    ];

    return Scaffold(

      body: PageView.builder(
        
        controller: c,

        itemCount: list.length,
        itemBuilder: (ctx, ind) {

        final isLast = ind == list.length-1;  
          
        return Column(children: [

        Lottie.asset('assets/lottie/${list[ind].lottie}.json' , 
        height: mq.height * .6 , width: isLast ? mq.width* .7 : null),

        //title
        Text(
        list[ind].title,  
        style: const TextStyle(
          fontSize: 18 , 
          fontWeight: FontWeight.w900 , 
          letterSpacing: .5),
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
          list.length, 
          (i) => 
          Container(
            width: i == ind ? 15: 10,
            height: 8,
            decoration: BoxDecoration(
              color: i == ind ?Colors.blue: Colors.grey,
              borderRadius: 
               const BorderRadius.all(Radius.circular(5))),
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
              onPressed: () {

                if(isLast){

                   Get.off(() => const HomeScreen()); 
                  //Navigator.of(context).pushReplacement(MaterialPageRoute(
                    //builder: (_) => HomeScreen()));


                }else{
                  c.nextPage(duration: Duration(milliseconds:600 ), 
                  curve: Curves.ease);
                }

              }, 
              child:  Text( isLast ? 'Finish' :'Next')),
            
            const Spacer(flex: 2),        
              
      ],
      );
        
      },
      )

    );
  }
}

