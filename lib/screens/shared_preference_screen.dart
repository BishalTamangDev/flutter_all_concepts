import 'package:all_concepts/variables/variables.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../widgets/appbar_widget.dart';

class SharedPreferenceScreen extends StatefulWidget {
  const SharedPreferenceScreen({super.key, this.description = "Empty!"});

  final String description;

  @override
  State<StatefulWidget> createState() => _SharedPreferenceState();
}

class _SharedPreferenceState extends State<SharedPreferenceScreen> {
  static const String keyName = "name";

  String username = "";

  bool error = false;

  @override
  void initState() {
    super.initState();
    getPrefValue();
  }

  TextEditingController tecUsername = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: "SharedPref"),
      body: SingleChildScrollView(
        child: Padding(
          padding: Variables.getBottomLeftRightPadding(),
          child: Column(
            children: [
              const SizedBox(height: 16.0),
              Text(widget.description,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                ),),
              const SizedBox(height: 40.0),
              if (username.isEmpty)
                Column(
                  children: [
                    if (error)
                      const Text(
                        "Please enter the username first.",
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    const SizedBox(height: 10.0),
                    TextField(
                      controller: tecUsername,
                      decoration: const InputDecoration(
                        label: Text("username"),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () async {
                          String temp = tecUsername.text;

                          if (temp.isNotEmpty) {
                            var prefs = await SharedPreferences.getInstance();
                            prefs.setString(keyName, temp.toString());
                            username = temp.toString();
                            error = false;
                            setState(() {});
                          } else {
                            //   show error message
                            error = true;
                            setState(() {});
                          }
                        },
                        child: const Text("Set User"),
                      ),
                    ),
                  ],
                ),
              if (username.isNotEmpty)
                Column(
                  children: [
                    Text("Hello, $username!"),
                    const SizedBox(
                      height: 10.0,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        var prefs = await SharedPreferences.getInstance();

                        var str = prefs.clear();

                        error = false;

                        username = "";

                        setState(() {});
                      },
                      child: const Text("Reset User"),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }

  void getPrefValue() async {
    var prefs = await SharedPreferences.getInstance();

    var str = prefs.getString(keyName);

    username = str ?? '';
    setState(() {});
  }
}
