import 'package:all_concepts/variables/variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GradientScreen extends StatelessWidget {
  const GradientScreen({super.key, this.description = "Empty!"});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gradient"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: Variables.getPadding(),
          child: Column(
            children: [
              Text(description),
              // text button
              const SizedBox(
                height: 20.0,
              ),

              Container(
                height: 200,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Color(0xff30cfd0),
                        Color(0xff330867),
                      ],
                      begin: FractionalOffset(0.0, 0.0),
                      end: FractionalOffset(1.0, 1.0)),
                ),
              ),

              const SizedBox(height: 10.0),
              const Text("Linear gradient"),
              const SizedBox(
                height: 20.0,
              ),

              Container(
                height: 200,
                decoration: const BoxDecoration(
                  gradient: RadialGradient(
                    colors: [
                      // Color(0xff30cfd0),
                      // Color(0xff330867),
                      Colors.white,
                      Colors.blueGrey
                    ],
                    radius: 1.05,
                    focal: Alignment.centerRight,
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              const Text("Radial gradient"),
            ],
          ),
        ),
      ),
    );
  }
}
