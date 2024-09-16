import 'package:all_concepts/variables/variables.dart';
import 'package:flutter/material.dart';

import '../widgets/appbar_widget.dart';

class WrapScreen extends StatelessWidget {
  const WrapScreen(
      {super.key, this.description = "Empty!", required this.arrFriend});

  final String description;
  final List arrFriend;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'Wrap'),
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
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  Container(
                    width: 119,
                    height: 100,
                    color: Colors.grey.shade200,
                  ),
                  Container(
                    width: 119,
                    height: 100,
                    color: Colors.grey.shade300,
                  ),
                  Container(
                    width: 119,
                    height: 100,
                    color: Colors.grey.shade400,
                  ),
                  Container(
                    width: 119,
                    height: 100,
                    color: Colors.grey.shade500,
                  ),
                  Container(
                    width: 119,
                    height: 100,
                    color: Colors.grey.shade600,
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
