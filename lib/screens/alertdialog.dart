import 'package:all_concepts/variables/variables.dart';
import 'package:flutter/material.dart';

class AlertDialogScreen extends StatefulWidget {
  const AlertDialogScreen({super.key, this.description = "Empty!"});

  final String description;

  @override
  State<StatefulWidget> createState() => _AlertDialogState();
}

class _AlertDialogState extends State<AlertDialogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AlertDialog'),
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
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Alert Dialog Title'),
                      content: const Text(
                          "The quick brown fox jumps over the lazy dog."),
                      titlePadding: const EdgeInsets.only(
                          top: 20.0, left: 20.0, right: 20.0),
                      contentPadding: const EdgeInsets.only(
                          top: 10.0, left: 20.0, right: 20.0),
                      actionsPadding: const EdgeInsets.only(
                          top: 10.0, left: 20.0, right: 20.0),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text("Close"),
                        ),
                      ],
                    ),
                  );
                },
                child: const Text("Show AlertDialog"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
