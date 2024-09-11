import 'package:all_concepts/variables/variables.dart';
import 'package:flutter/material.dart';

class RadioScreen extends StatefulWidget {
  const RadioScreen({super.key, this.description = "Empty!"});

  final String description;

  @override
  State<StatefulWidget> createState() => _RadioState();
}

class _RadioState extends State<RadioScreen> {
  String faculty = 'none';

  bool submitted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Radio"),
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

              const Text("Select your faculty."),
              const SizedBox(height: 10.0),

              // bba
              Row(
                children: [
                  SizedBox(
                    width: 24.0,
                    height: 24.0,
                    child: Radio(
                      value: 'bba',
                      onChanged: (newValue) {
                        setState(() {
                          faculty = newValue!;
                        });
                      },
                      groupValue: faculty,
                    ),
                  ),
                  const SizedBox(width: 6.0),
                  const Text("BBA"),
                ],
              ),

              const SizedBox(height: 10.0),

              // bca
              Row(
                children: [
                  SizedBox(
                    width: 24.0,
                    height: 24.0,
                    child: Radio(
                      value: 'bca',
                      onChanged: (newValue) {
                        setState(() {
                          faculty = newValue!;
                          submitted = false;
                        });
                      },
                      groupValue: faculty,
                    ),
                  ),
                  const SizedBox(width: 6.0),
                  const Text("BCA"),
                ],
              ),

              const SizedBox(height: 10.0),

              // bit
              Row(
                children: [
                  SizedBox(
                    width: 24.0,
                    height: 24.0,
                    child: Radio(
                      value: 'bit',
                      onChanged: (newValue) {
                        setState(() {
                          faculty = newValue!;
                          submitted = false;
                        });
                      },
                      groupValue: faculty,
                    ),
                  ),
                  const SizedBox(width: 6.0),
                  const Text("BIT"),
                ],
              ),

              const SizedBox(height: 10.0),

              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (faculty != 'none') {
                        setState(() {
                          submitted = true;
                        });
                      }
                    },
                    child: const Text("Submit"),
                  ),
                  const SizedBox(width: 10.0),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        submitted = false;
                        faculty = 'none';
                      });
                    },
                    child: const Text("Reset"),
                  ),
                ],
              ),

              const SizedBox(height: 10.0),

              if (submitted) Text("Your faculty is : $faculty"),

              const SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
    );
  }
}
