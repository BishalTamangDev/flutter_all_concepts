import 'package:flutter/material.dart';

import '../variables/variables.dart';
import '../widgets/appbar_widget.dart';

class CenterScreen extends StatelessWidget {
  const CenterScreen({super.key, this.description = 'Empty!'});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: "Center"),
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
              Container(
                height: 300,
                width: 300,
                color: Colors.grey.shade300,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        color: Colors.grey.shade400,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text("Inner Center Container"),
                    ],
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
