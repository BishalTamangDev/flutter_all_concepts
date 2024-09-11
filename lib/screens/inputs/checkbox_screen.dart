import 'package:all_concepts/variables/variables.dart';
import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: const Text("CheckBox"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: Variables.getLeftRightPadding(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // simple input
              const SizedBox(height: 16.0),
              Text(widget.description),
              const SizedBox(height: 20.0),

              Row(
                children: [
                  Container(
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
                  const Text("I accept all the terms & conditions."),
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
                    ? const Text("Terms & Conditions accepted.")
                    : const Text("Terms & Conditions not accepted."),
            ],
          ),
        ),
      ),
    );
  }
}
