import 'package:all_concepts/variables/variables.dart';
import 'package:flutter/material.dart';

import '../widgets/appbar_widget.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key, this.description = 'Empty!'});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: "Image"),
      body: SingleChildScrollView(
        child: Padding(
          padding: Variables.getPadding(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                description,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              const SizedBox(height: 20),
              Image.network(
                'https://static-00.iconduck.com/assets.00/flutter-icon-2048x2048-ufx4idi8.png',
                width: 120,
              ),
              const SizedBox(height: 20),
              Text(
                'Image from web',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 200,
                child: Image.asset('assets/images/room.jpg'),
              ),
              const SizedBox(height: 20),
              Text(
                'Image inside sized box',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              const SizedBox(height: 20),
              Image.asset('assets/images/room.jpg'),
              const SizedBox(height: 20),
              Text(
                'Image local storage',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
