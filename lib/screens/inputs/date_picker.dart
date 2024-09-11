import 'dart:math';

import 'package:all_concepts/variables/variables.dart';
import 'package:flutter/material.dart';

class DatePickerScreen extends StatefulWidget {
  const DatePickerScreen({super.key, this.description = "Empty!"});

  final String description;

  @override
  State<StatefulWidget> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePickerScreen> {
  DateTime? appointmentDate;

  int appointmentDateYear = 0;
  int appointmentDateMonth = 0;
  int appointmentDateDay = 0;

  @override
  void initState() {
    super.initState();
    if (appointmentDate != null) {
      appointmentDateYear = appointmentDate!.year;
      appointmentDateMonth = appointmentDate!.month;
      appointmentDateDay = appointmentDate!.day;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DatePicker"),
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
              const SizedBox(height: 10.0),
              Text(
                  "Selected date : ${appointmentDate != null ? "${appointmentDateYear.toString()}:${appointmentDateMonth.toString()}:${appointmentDateDay.toString()}" : "-"}"),
              const SizedBox(height: 10.0),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: appointmentDate ?? DateTime.now(),
                        firstDate: DateTime(2020),
                        lastDate: DateTime(2030),
                      );

                      if (pickedDate != null) {
                        setState(() {
                          appointmentDate = pickedDate;
                          if (appointmentDate != null) {
                            appointmentDateYear = appointmentDate!.year;
                            appointmentDateMonth = appointmentDate!.month;
                            appointmentDateDay = appointmentDate!.day;

                            String finalDate = "$appointmentDateYear";
                          }
                        });
                      }
                    },
                    child: const Text("Pick a date"),
                  ),
                  const SizedBox(width: 10.0),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        appointmentDate = null;
                      });
                    },
                    child: const Text("Reset date"),
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
