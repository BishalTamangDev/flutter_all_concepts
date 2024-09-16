import 'package:all_concepts/variables/variables.dart';
import 'package:flutter/material.dart';

import '../widgets/appbar_widget.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({super.key, this.description = "Empty!"});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: "Stack Screen"),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
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
              // text button
              const SizedBox(
                height: 20.0,
              ),

              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  Container(
                    height: 200,
                    color: Colors.grey.shade600,
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.grey.shade500,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.grey.shade400,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.grey.shade300,
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
