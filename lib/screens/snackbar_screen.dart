import 'package:all_concepts/variables/variables.dart';
import 'package:flutter/material.dart';

class SnackBarScreen extends StatefulWidget {
  const SnackBarScreen({super.key, this.description = "Empty!"});

  final String description;

  @override
  State<StatefulWidget> createState() => _SnackBarState();
}

class _SnackBarState extends State<SnackBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: Variables.getLeftRightPadding(),
          child: Column(
            children: [
              const SizedBox(height: 16.0),
              Text(widget.description),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11.0),
                      ),
                      content: const Text("This is the SnackBar message."),
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Colors.blueGrey,
                      action: SnackBarAction(
                        label: 'Undo',
                        onPressed: () {},
                        textColor: Colors.white,
                      ),
                    ),
                  );
                },
                child: const Text("Show SnackBar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
