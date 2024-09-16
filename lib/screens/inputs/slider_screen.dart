import 'package:all_concepts/variables/variables.dart';
import 'package:flutter/material.dart';

import '../../widgets/appbar_widget.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key, this.description = "Empty!"});

  final String description;

  @override
  State<StatefulWidget> createState() => _SliderState();
}

class _SliderState extends State<SliderScreen> {
  double currentSliderValue = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: "Slider"),
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

              Slider(
                value: currentSliderValue,
                max: 100,
                divisions: 5,
                label: currentSliderValue.round().toString(),
                onChanged: (newRange) {
                  currentSliderValue = newRange;
                  setState(() {});
                },
              ),

              const SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
