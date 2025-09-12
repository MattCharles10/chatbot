import 'package:chatbot/helper/global.dart';
import 'package:chatbot/helper/pref.dart';
import 'package:chatbot/model/home_type.dart';
import 'package:chatbot/widget/home_card.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

import '../helper/global.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    super.initState();
    // This sets the system UI (status bar, navigation bar) to be edge-to-edge.
    // It's a platform-specific setting for a full-screen appearance.
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    pref.showOnboarding = false ;
  }

  @override
  Widget build(BuildContext context) {
    // Initializing device size. Assuming 'mq' is a globally accessible variable
    // (e.g., defined in global.dart as `late Size mq;`).
    // It's important that `mq` is initialized here, inside `build`, as `context` is available.
    mq = MediaQuery.sizeOf(context);

    return Scaffold(

      appBar: AppBar(

        elevation: 1,
        centerTitle: true ,
        backgroundColor: Colors.white,
        title: const Text(
         appName,
         style: TextStyle(
          color: Colors.blue,fontSize:20 ,fontWeight: FontWeight.w500),
        ),

        //
       actions: [
        IconButton(onPressed: (){}, 
        icon:Icon(
          Icons.brightness_4_rounded , 
          color: Colors.blue, size:26) )],

      ),

      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: mq.width * .04 , vertical: mq.height * .01),
        children: HomeType.values.map((e) => HomeCard(homeType: e ,)).toList(),
      ),
    );
  }
}