import 'package:all_concepts/variables/variables.dart';
import 'package:flutter/material.dart';

class IconScreen extends StatelessWidget {
  const IconScreen({super.key, this.description = 'Empty!'});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Icon"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: Variables.getPadding(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(description),
              const SizedBox(height: 20.0),
              const Icon(Icons.verified_user),
              const SizedBox(height: 10.0),
              const Icon(
                Icons.verified_user,
                size: 32.0,
                color: Colors.blueGrey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
