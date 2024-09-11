import 'package:all_concepts/variables/variables.dart';
import 'package:flutter/material.dart';

class CustomFontScreen extends StatelessWidget {
  const CustomFontScreen({super.key, this.description = 'Empty!'});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Font"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: Variables.getPadding(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(description),
              const SizedBox(height: 20.0),
              const Text(
                  "Normal font : The quick brown fox jumps over the lazy dog."),
              const SizedBox(height: 20.0),
              const Text(
                "Custom font : The quick brown fox jumps over the lazy dog.",
                style: TextStyle(
                  fontFamily: 'PlayWriteCu',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
