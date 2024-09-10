import 'package:all_concepts/variables/variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MarginScreen extends StatelessWidget {
  const MarginScreen({super.key, this.description = 'Empty!'});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Margin Screen"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: Variables.getPadding(),
          child: Column(
            children: [
              Text(description),
              // const SizedBox(height: 20.0),

              Container(
                height: 200,
                margin: const EdgeInsets.only(top: 20.0),
                color: Colors.grey.shade300,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
