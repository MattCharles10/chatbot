import 'package:chatbot/widget/custom_loading.dart';
import 'package:flutter/material.dart';
import 'package:chatbot/screen/home_screen.dart';
import 'package:lottie/lottie.dart';
import '../helper/global.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    // Navigate to HomeScreen after 4 seconds
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const HomeScreen())
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // initializing device size
    mq = MediaQuery.sizeOf(context);

    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: SafeArea(
           // Prevent overflow
              child: Column(
                children: [
                  const Spacer(flex: 2,),
                  Card(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(mq.width * .05),
                      child: Image.asset(
                        'assets/images/logo.png', width: mq.width * .4 ,
            
                      ),
                      
                    ),

                  ),
                   const Spacer(),
                  // Lottie animation
                  // SizedBox(
                  //   width: mq.width * 0.6,
                  //   height: mq.width * 0.6,
                  //   child: Lottie.asset(
                  //     'assets/lottie/robo.json', 
                  //     fit: BoxFit.contain,
                  //   ),
                  // ),
                  CustomLoading(),
                  const Spacer(),
                ],
              ),
            ),
          ),
        );
    
  }
}
