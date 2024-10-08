import 'package:all_concepts/variables/variables.dart';
import 'package:flutter/material.dart';

import '../widgets/appbar_widget.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({super.key, this.description = 'Empty!'});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: "Text"),
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
              const SizedBox(height: 10),

              // simple text widget
              const Card(
                child: ListTile(
                  title: Text("The quick brown fox jumps over the lazy dog."),
                  subtitle: Text("No style added"),
                ),
              ),
              const SizedBox(height: 10),
              // simple text widget
              const Card(
                child: ListTile(
                  title: Text(
                    "The quick brown fox jumps over the lazy dog.",
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.italic),
                  ),
                  subtitle: Text("Text style"),
                ),
              ),
              const SizedBox(height: 10),
              // simple text widget
              Card(
                child: ListTile(
                  title: Text(
                    "The quick brown fox jumps over the lazy dog.",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  subtitle: const Text("Text Theme"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
