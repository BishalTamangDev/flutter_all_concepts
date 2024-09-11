import 'package:all_concepts/variables/variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PositionedScreen extends StatelessWidget {
  const PositionedScreen({super.key, this.description = "Empty!"});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Positioned'),
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

              Stack(
                children: [
                  Container(
                    height: 250,
                    color: Colors.grey.shade300,
                  ),
                  Positioned(
                    top: 40,
                    left: 40,
                    child: Container(
                      height: 80,
                      width: 80,
                      color: Colors.grey.shade400,
                    ),
                  ),
                  Positioned(
                    top: 150,
                    left: 150,
                    child: Container(
                      height: 80,
                      width: 80,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
