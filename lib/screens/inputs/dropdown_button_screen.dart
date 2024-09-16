import 'package:all_concepts/variables/variables.dart';
import 'package:flutter/material.dart';

import '../../widgets/appbar_widget.dart';

class DropdownButtonScreen extends StatefulWidget {
  const DropdownButtonScreen({super.key, this.description = "Empty!"});

  final String description;

  @override
  State<StatefulWidget> createState() => _DropdownButtonState();
}

class _DropdownButtonState extends State<DropdownButtonScreen> {
  String dropdownValue = 'bba';

  bool submitted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: "DropdownButton"),
      body: SingleChildScrollView(
        child: Padding(
          padding: Variables.getLeftRightPadding(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16.0),
              Text(
                widget.description,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Select your faculty',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                  DropdownButton(
                    value: dropdownValue,
                    items: const [
                      DropdownMenuItem(
                        value: 'bba',
                        child: Text('BBA'),
                      ),
                      DropdownMenuItem(
                        value: 'bca',
                        child: Text('BCA'),
                      ),
                      DropdownMenuItem(
                        value: 'bit',
                        child: Text('BIT'),
                      ),
                    ],
                    onChanged: (String? value) {
                      setState(() {
                        submitted = false;
                        dropdownValue = value!;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              if (submitted == true)
                Text(
                  "Selected faculty : ${dropdownValue.toString()}",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  submitted = true;
                  setState(() {});
                },
                child: const Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
