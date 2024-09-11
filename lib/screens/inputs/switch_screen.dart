import 'package:all_concepts/variables/variables.dart';
import 'package:flutter/material.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key, this.description = "Empty!"});

  final String description;

  @override
  State<StatefulWidget> createState() => _SwitchState();
}

class _SwitchState extends State<SwitchScreen> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Switch"),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Happy mood"),
                  SizedBox(
                    width: 24.0,
                    height: 24.0,
                    child: Switch(
                      activeColor: Colors.green,
                      value: isSwitched,
                      onChanged: (newValue) {
                        isSwitched = newValue;
                        setState(() {});
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
