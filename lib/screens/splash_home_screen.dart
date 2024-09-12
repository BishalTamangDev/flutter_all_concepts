import 'package:all_concepts/screens/splash_screen_one.dart';
import 'package:all_concepts/variables/variables.dart';
import 'package:flutter/material.dart';

class SplashHomeScreen extends StatelessWidget {
  const SplashHomeScreen({super.key, this.description = "Empty!"});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SplashScreen"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: Variables.getBottomLeftRightPadding(),
          child: Column(
            children: [
              const SizedBox(height: 16.0),
              Text(description),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  //   show splash screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SplashScreenOne(),
                    ),
                  );
                },
                child: const Text("Show Splash Screen"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
