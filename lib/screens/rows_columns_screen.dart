import 'package:all_concepts/variables/variables.dart';
import 'package:flutter/material.dart';

import '../widgets/appbar_widget.dart';

class RowsColumnScreen extends StatelessWidget {
  const RowsColumnScreen({super.key, this.description = 'Empty!'});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'Row and Column'),
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
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.grey.shade200,
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.grey.shade300,
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.grey.shade400,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                'Row',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  Container(
                    height: 100,
                    width: double.infinity,
                    color: Colors.grey.shade200,
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 100,
                    width: double.infinity,
                    color: Colors.grey.shade300,
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 100,
                    width: double.infinity,
                    color: Colors.grey.shade400,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                'Column',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
