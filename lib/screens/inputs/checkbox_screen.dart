import 'package:all_concepts/variables/variables.dart';
import 'package:flutter/material.dart';

import '../../widgets/appbar_widget.dart';

class CheckboxScreen extends StatefulWidget {
  const CheckboxScreen({super.key, this.description = "Empty!"});

  final String description;

  @override
  State<StatefulWidget> createState() => _CheckboxState();
}

class _CheckboxState extends State<CheckboxScreen> {
  bool? isChecked = false;
  bool submitted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: "CheckBox"),
      body: SingleChildScrollView(
        child: Padding(
          padding: Variables.getLeftRightPadding(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // simple input
              const SizedBox(height: 16.0),
              Text(
                widget.description,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              const SizedBox(height: 20.0),

              Row(
                children: [
                  SizedBox(
                    width: 24.0,
                    height: 24.0,
                    child: Checkbox(
                        value: isChecked,
                        onChanged: (newValue) {
                          setState(() {
                            submitted = false;
                            isChecked = newValue;
                          });
                        }),
                  ),
                  const SizedBox(width: 5.0),
                  Text(
                    "I accept all the terms & conditions.",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10.0),

              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        submitted = true;
                      });
                    },
                    child: const Text("Submit"),
                  ),
                  const SizedBox(width: 10.0),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        submitted = false;
                        isChecked = false;
                      });
                    },
                    child: const Text("Reset"),
                  ),
                ],
              ),

              const SizedBox(height: 20.0),

              if (submitted)
                isChecked == true
                    ? Text(
                        "Terms & Conditions accepted.",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                      )
                    : Text(
                        "Terms & Conditions not accepted.",
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
