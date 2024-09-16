import 'package:all_concepts/variables/variables.dart';
import 'package:flutter/material.dart';

import '../widgets/appbar_widget.dart';

class MarginScreen extends StatelessWidget {
  const MarginScreen({super.key, this.description = 'Empty!'});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: "Margin Screen"),
      body: SingleChildScrollView(
        child: Padding(
          padding: Variables.getPadding(),
          child: Column(
            children: [
              Text(description,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                ),),
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
