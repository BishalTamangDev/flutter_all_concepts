import 'package:all_concepts/variables/variables.dart';
import 'package:flutter/material.dart';

import '../widgets/appbar_widget.dart';

class InkwellScreen extends StatelessWidget {
  const InkwellScreen({super.key, this.description = 'Empty!'});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: "Inkwell"),
      body: SingleChildScrollView(
        child: Padding(
          padding: Variables.getPadding(),
          child: Column(
            children: [
              Text(
                description,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              // const SizedBox(height: 20.0),

              const SizedBox(height: 20.0),

              InkWell(
                onDoubleTap: () {
                  print("Double tap on inkwell-container.");
                },
                child: Container(
                  height: 200,
                  margin: const EdgeInsets.only(top: 20.0),
                  color: Colors.grey.shade300,
                ),
              ),

              const SizedBox(height: 20.0),

              InkWell(
                onTap: () {
                  print('Clicked on inkwell-text!');
                },
                child: Text(
                  'InkWell Text',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
