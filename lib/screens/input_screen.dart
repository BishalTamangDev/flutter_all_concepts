import 'package:all_concepts/screens/inputs/text_field_screen.dart';
import 'package:all_concepts/variables/variables.dart';
import 'package:flutter/material.dart';

import 'inputs/checkbox_screen.dart';
import 'inputs/date_picker_screen.dart';
import 'inputs/dropdown_button_screen.dart';
import 'inputs/radio_screen.dart';
import 'inputs/range_slider_screen.dart';
import 'inputs/switch_screen.dart';
import 'inputs/time_picker_screen.dart';

class InputScreen extends StatelessWidget {
  InputScreen({super.key, this.description = "Empty!"});

  final String description;

  final List<Map> arrInputWidgets = [
    {
      'title': 'Checkbox',
      'description':
          'Allows users to select or deselect a boolean value. It typically shows a checkmark when selected.',
      'short_description': 'Boolean selection widget.'
    },
    {
      'title': 'DatePicker',
      'description': 'Displays a calendar for users to pick a date.',
      'short_description': 'Date selection widget.'
    },
    {
      'title': 'DropdownButton',
      'description':
          'Allows users to select an item from a dropdown list of options.',
      'short_description': 'Dropdown list selector.'
    },
    {
      'title': 'Form',
      'description':
          'A container widget for grouping multiple input fields and providing form-level validation.',
      'short_description': 'Input field container with validation.'
    },
    {
      'title': 'Radio',
      'description':
          'Lets users choose one option from a list of mutually exclusive options.',
      'short_description': 'Single selection from a group.'
    },
    {
      'title': 'RangeSlider',
      'description':
          'Enables users to select a range between two values, providing two thumbs to move along the slider track.',
      'short_description': 'Range selection slider.'
    },
    {
      'title': 'SignaturePad',
      'description':
          'A widget used for capturing handwritten input such as signatures.',
      'short_description': 'Handwriting input capture.'
    },
    {
      'title': 'Slider',
      'description':
          'A horizontal control to select a value within a given range, such as volume or brightness control.',
      'short_description': 'Range value selection widget.'
    },
    {
      'title': 'Switch',
      'description':
          'Used for toggling between on and off states. It is commonly used for settings.',
      'short_description': 'On/Off toggle widget.'
    },
    {
      'title': 'TextField',
      'description':
          'Used for text input from the user. It provides features like hint text, input formatting, and validation.',
      'short_description': 'Text input widget.'
    },
    {
      'title': 'TimePicker',
      'description': 'Provides an interface for selecting a time.',
      'short_description': 'Time selection widget.'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inputs"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: Variables.getLeftRightPadding(),
          child: Column(
            children: [
              const SizedBox(height: 16.0),
              Text(description),
              const SizedBox(height: 10.0),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: arrInputWidgets.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.only(
                      top: 16.0,
                    ),
                    child: ListTile(
                      onTap: () {
                        if (arrInputWidgets[index]['title'] == 'Checkbox') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CheckboxScreen(
                                description: arrInputWidgets[index]
                                ['description'],
                              ),
                            ),
                          );
                        } else if (arrInputWidgets[index]['title'] == 'DatePicker') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DatePickerScreen(
                                description: arrInputWidgets[index]
                                ['description'],
                              ),
                            ),
                          );
                        } else if (arrInputWidgets[index]['title'] == 'DropdownButton') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DropdownButtonScreen(
                                description: arrInputWidgets[index]
                                ['description'],
                              ),
                            ),
                          );
                        } else if (arrInputWidgets[index]['title'] == 'Radio') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RadioScreen(
                                description: arrInputWidgets[index]
                                ['description'],
                              ),
                            ),
                          );
                        } else if (arrInputWidgets[index]['title'] == 'RangeSlider') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RangeSliderScreen(
                                description: arrInputWidgets[index]
                                ['description'],
                              ),
                            ),
                          );
                        } else if (arrInputWidgets[index]['title'] == 'Switch') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SwitchScreen(
                                description: arrInputWidgets[index]
                                ['description'],
                              ),
                            ),
                          );
                        } else if (arrInputWidgets[index]['title'] == 'TextField') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TextFieldScreen(
                                description: arrInputWidgets[index]
                                    ['description'],
                              ),
                            ),
                          );
                        } else if (arrInputWidgets[index]['title'] == 'TimePicker') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TimePickerScreen(
                                description: arrInputWidgets[index]
                                ['description'],
                              ),
                            ),
                          );
                        }
                      },
                      title: Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Text(
                          "${arrInputWidgets[index]['title'][0].toUpperCase()}${arrInputWidgets[index]['title'].substring(1)}",
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(
                          top: 5.0,
                          bottom: 5.0,
                        ),
                        child: Text(
                          arrInputWidgets[index]['short_description'],
                        ),
                      ),
                      trailing: const Icon(
                        Icons.arrow_right,
                        color: Colors.blueGrey,
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}
