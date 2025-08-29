import 'package:chatbot/helper/global.dart';

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
  }

  @override
  Widget build(BuildContext context) {
    // Initializing device size. Assuming 'mq' is a globally accessible variable
    // (e.g., defined in global.dart as `late Size mq;`).
    // It's important that `mq` is initialized here, inside `build`, as `context` is available.
    mq = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50, // Added a light background color to the Scaffold
      // A safe area ensures content doesn't overlap with system UI elements like notches or dynamic islands.
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0), // Slightly increased horizontal padding
            child: Text(
              'Welcome to your Chatbot Home! 🎉', // Slightly changed text for context
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: mq.width * 0.065, // Slightly larger responsive font size
                fontWeight: FontWeight.w700, // Bolder text
                color: const Color.fromARGB(255, 58, 75, 84), // Darker text color matching theme
                height: 1.5, // Line height for better readability
              ),
            ),
          ),
        ),
      ),
    );
  }
}