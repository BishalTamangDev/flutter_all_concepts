import 'package:all_concepts/variables/variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleAvatarScreen extends StatelessWidget {
  const CircleAvatarScreen({super.key, this.description = 'Empty!'});

  final String description;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Circle Avatar"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: Variables.getPadding(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(description),
              // text button
              const SizedBox(
                height: 20.0,
              ),

              const CircleAvatar(),
              const SizedBox(height: 10.0),
              const Text("Simple Circle Avatar"),
              const SizedBox(height: 20.0),

              // simple circle avatar
              CircleAvatar(
                radius: 32,
                backgroundColor: Colors.grey.shade400,
              ),
              const SizedBox(height: 10.0),
              const Text("Circle avatar with background color"),
              const SizedBox(height: 20.0),

              // circle avatar with background image
              const CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/images/room.jpg'),
              ),
              const SizedBox(height: 10.0),
              const Text("Circle avatar with background color"),
              const SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
