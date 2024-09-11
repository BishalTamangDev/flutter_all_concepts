import 'package:all_concepts/variables/variables.dart';
import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({super.key, this.description = "Empty!"});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack Screen"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
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
