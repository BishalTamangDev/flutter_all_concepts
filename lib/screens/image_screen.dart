import 'package:all_concepts/variables/variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key, this.description = 'Empty!'});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: Variables.getPadding(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(description),
              const SizedBox(height: 20),
              Image.network(
                'https://static-00.iconduck.com/assets.00/flutter-icon-2048x2048-ufx4idi8.png',
                width: 120,
              ),
              const SizedBox(height: 20),
              const Text('Image from web'),
              const SizedBox(height: 20),
              SizedBox(
                width: 200,
                child: Image.asset('assets/images/room.jpg'),
              ),
              const SizedBox(height: 20),
              const Text('Image inside sized box'),
              const SizedBox(height: 20),
              Image.asset('assets/images/room.jpg'),
              const SizedBox(height: 20),
              const Text('Image local storage'),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
