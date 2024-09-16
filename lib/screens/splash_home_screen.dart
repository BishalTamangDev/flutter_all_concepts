import 'package:all_concepts/screens/splash_screen_one.dart';
import 'package:all_concepts/variables/variables.dart';
import 'package:flutter/material.dart';

import '../widgets/appbar_widget.dart';

class SplashHomeScreen extends StatelessWidget {
  const SplashHomeScreen({super.key, this.description = "Empty!"});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: "SplashScreen"),
      body: SingleChildScrollView(
        child: Padding(
          padding: Variables.getBottomLeftRightPadding(),
          child: Column(
            children: [
              const SizedBox(height: 16.0),
              Text(
                description,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
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
