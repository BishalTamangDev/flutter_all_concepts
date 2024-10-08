import 'package:all_concepts/variables/variables.dart';
import 'package:flutter/material.dart';

import '../widgets/appbar_widget.dart';

class ExpandedScreen extends StatelessWidget {
  const ExpandedScreen({super.key, this.description = 'Empty!'});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: "Expanded"),
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
              const SizedBox(height: 20.0),
              Row(
                children: [
                  Container(
                    width: 80,
                    height: 200,
                    color: Colors.grey.shade200,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 200,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 80,
                    height: 200,
                    color: Colors.grey.shade200,
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              Row(
                children: [
                  Container(
                    width: 80,
                    height: 200,
                    color: Colors.grey.shade200,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 200,
                      color: Colors.grey.shade300,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
