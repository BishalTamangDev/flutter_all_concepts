import 'package:all_concepts/variables/variables.dart';
import 'package:flutter/material.dart';

import '../widgets/appbar_widget.dart';

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
      appBar: const AppBarWidget(
        title: "AlertDialog",
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: Variables.getLeftRightPadding(),
          child: Column(
            children: [
              const SizedBox(height: 16.0),
              Text(
                widget.description,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                ),
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
