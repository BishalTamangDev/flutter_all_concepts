import 'package:all_concepts/variables/variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClipRRectScreen extends StatelessWidget {
  const ClipRRectScreen({super.key, this.description = "Empty!"});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ClipRRect'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: Variables.getPadding(),
          child: Column(
            children: [
              Text(description),
              // text button
              const SizedBox(
                height: 20.0,
              ),

              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                ),
                child: Container(
                  width: 200,
                  height: 180,
                  color: Colors.grey.shade300,
                ),
              ),

              const SizedBox(
                height: 20.0,
              ),

              SizedBox(
                width: 200,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16.0),
                    bottomRight: Radius.circular(16.0),
                  ),
                  child: Image.asset(
                    'assets/images/room.jpg',
                    fit: BoxFit.cover,
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
