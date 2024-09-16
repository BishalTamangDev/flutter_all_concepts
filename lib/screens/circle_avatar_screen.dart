import 'package:all_concepts/variables/variables.dart';
import 'package:flutter/material.dart';

import '../widgets/appbar_widget.dart';

class CircleAvatarScreen extends StatelessWidget {
  const CircleAvatarScreen({super.key, this.description = 'Empty!'});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: "Circle Avatar"),
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
              // text button
              const SizedBox(
                height: 20.0,
              ),

              CircleAvatar(
                backgroundColor: Theme.of(context).primaryColorLight,
              ),
              const SizedBox(height: 10.0),
              Text(
                "Simple Circle Avatar",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              const SizedBox(height: 20.0),

              // simple circle avatar
              CircleAvatar(
                radius: 32,
                backgroundColor: Colors.grey.shade300,
              ),
              const SizedBox(height: 10.0),
              Text(
                "Circle avatar with background color",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              const SizedBox(height: 20.0),

              // circle avatar with background image
              const CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/images/room.jpg'),
              ),
              const SizedBox(height: 10.0),
              Text(
                "Circle avatar with background color",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              const SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
