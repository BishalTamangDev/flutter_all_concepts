import 'package:all_concepts/variables/variables.dart';
import 'package:flutter/material.dart';

class BottomSheetScreen extends StatefulWidget {
  const BottomSheetScreen({super.key, this.description = 'Empty!'});

  final String description;

  @override
  State<BottomSheetScreen> createState() => _BottomSheetState();
}

class _BottomSheetState extends State<BottomSheetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BottomSheet"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: Variables.getPadding(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.description),
              // text button
              const SizedBox(height: 20.0),

              ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return SizedBox(
                          height: 250,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                    "Bottom sheet contents appears here."),
                                const SizedBox(height: 10.0),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text("Close"),
                                ),
                              ],
                            ),
                          ),
                        );
                      });
                },
                child: const Text("Show Bottom Sheet"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
