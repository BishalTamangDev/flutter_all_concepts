import 'package:all_concepts/variables/variables.dart';
import 'package:flutter/material.dart';

import '../widgets/appbar_widget.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({super.key, this.description = 'Empty!'});

  final String description;

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  int textButtonPressCount = 0;
  int outlinedButtonPressCount = 0;
  int elevatedButtonPressCount = 0;

  // functions
  void pressTextButton() {
    setState(() {
      textButtonPressCount++;
    });
  }

  void pressElevatedButton() {
    setState(() {
      elevatedButtonPressCount++;
    });
  }

  void pressOutlinedButton() {
    setState(() {
      outlinedButtonPressCount++;
    });
  }

  void resetCount() {
    setState(() {
      textButtonPressCount = 0;
      outlinedButtonPressCount = 0;
      elevatedButtonPressCount = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: "Button"),
      body: SingleChildScrollView(
        child: Padding(
          padding: Variables.getPadding(),
          child: Column(
            children: [
              Text(
                widget.description,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              // text button
              const SizedBox(
                height: 10.0,
              ),

              // text button
              SizedBox(
                width: double.infinity,
                child: Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: Variables.getPadding(),
                        child: Column(
                          children: [
                            Text(
                              "Text button press count : $textButtonPressCount",
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.onSurface,
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            TextButton(
                              onPressed: () {
                                pressTextButton();
                              },
                              child: const Text("Text Button"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),

              // elevated buttons
              SizedBox(
                width: double.infinity,
                child: Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: Variables.getPadding(),
                        child: Column(
                          children: [
                            Text(
                              "Outlined button press count : $outlinedButtonPressCount",
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.onSurface,
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            OutlinedButton(
                              onPressed: () {
                                pressOutlinedButton();
                              },
                              child: const Text("Outlined Button"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(
                height: 10.0,
              ),

              SizedBox(
                width: double.infinity,
                child: Card(
                  child: Padding(
                    padding: Variables.getPadding(),
                    child: Column(
                      children: [
                        Text(
                          "Elevated button press count : $elevatedButtonPressCount",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            pressElevatedButton();
                          },
                          child: const Text("Elevated Button"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // reset counting
              const SizedBox(
                height: 10.0,
              ),
              SizedBox(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    resetCount();
                  },
                  child: const Text("Reset Count"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
