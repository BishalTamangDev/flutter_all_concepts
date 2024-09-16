import 'package:all_concepts/variables/variables.dart';
import 'package:flutter/material.dart';

import '../../widgets/appbar_widget.dart';

class RangeSliderScreen extends StatefulWidget {
  const RangeSliderScreen({super.key, this.description = "Empty!"});

  final String description;

  @override
  State<StatefulWidget> createState() => _RangeSliderState();
}

class _RangeSliderState extends State<RangeSliderScreen> {
  RangeValues rangeValues = const RangeValues(0, 100);
  int minRange = 0;
  int maxRange = 0;

  @override
  Widget build(BuildContext context) {
    RangeLabels rangeLabels = RangeLabels(
      rangeValues.start.toString(),
      rangeValues.end.toString(),
    );
    return Scaffold(
      appBar: const AppBarWidget(title: "RangeSlider"),
      body: SingleChildScrollView(
        child: Padding(
          padding: Variables.getLeftRightPadding(),
          child: Column(
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

              Text(
                "Selected range : $minRange - $maxRange",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),

              const SizedBox(height: 10.0),

              RangeSlider(
                min: 0,
                max: 100,
                labels: rangeLabels,
                values: rangeValues,
                activeColor: Colors.blueGrey,
                inactiveColor: Colors.blueGrey.shade100,
                divisions: 10,
                onChanged: (newValue) {
                  rangeValues = newValue;
                  setState(() {});
                },
              ),

              const SizedBox(height: 10.0),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    minRange = rangeValues.start.toInt();
                    maxRange = rangeValues.end.toInt();
                  });
                },
                child: Text(
                  "Set Range",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
