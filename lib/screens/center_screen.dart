import 'package:flutter/material.dart';

import '../variables/variables.dart';

class CenterScreen extends StatelessWidget {
  const CenterScreen({super.key, this.description = 'Empty!'});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Center"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: Variables.getPadding(),
            child: Text(description),
          ),
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
    );
  }
}
