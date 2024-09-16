import 'package:all_concepts/variables/variables.dart';
import 'package:flutter/material.dart';

import '../../widgets/appbar_widget.dart';

class TimePickerScreen extends StatefulWidget {
  const TimePickerScreen({super.key, this.description = "Empty!"});

  final String description;

  @override
  State<StatefulWidget> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePickerScreen> {
  TimeOfDay? appointmentTime;

  int appointmentTimeHour = 0;
  int appointmentTimeMinute = 0;

  @override
  void initState() {
    super.initState();
    if (appointmentTime != null) {
      appointmentTimeHour = appointmentTime!.hour;
      appointmentTimeMinute = appointmentTime!.minute;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: "TimePicker"),
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
              const SizedBox(height: 10.0),
              Text(
                "Selected Time : ${appointmentTime != null ? "${appointmentTimeHour.toString()}:${appointmentTimeMinute.toString()}" : "-"}",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              const SizedBox(height: 10.0),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      TimeOfDay? pickedTime = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                      );

                      if (pickedTime != null) {
                        setState(() {
                          appointmentTime = pickedTime;
                          if (appointmentTime != null) {
                            appointmentTimeHour = appointmentTime!.hour;
                            appointmentTimeMinute = appointmentTime!.minute;
                          }
                        });
                      }
                    },
                    child: const Text("Pick a Time"),
                  ),
                  const SizedBox(width: 10.0),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        appointmentTime = null;
                      });
                    },
                    child: const Text("Reset Time"),
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
