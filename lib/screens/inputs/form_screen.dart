import 'package:all_concepts/variables/variables.dart';
import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();

class FormScreen extends StatefulWidget {
  const FormScreen({super.key, this.description = "Empty!"});

  final String description;

  @override
  State<StatefulWidget> createState() => _FormState();
}

class _FormState extends State<FormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form"),
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
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Name",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter your name";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 10.0),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: "Age",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter your age";
                        }
                        return null;
                      },
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Great!"),
                            ),
                          );
                        }
                      },
                      child: const Text("Submit"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
