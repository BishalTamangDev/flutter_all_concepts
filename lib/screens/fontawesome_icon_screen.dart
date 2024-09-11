import 'package:all_concepts/variables/variables.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FontAwesomeIconScreen extends StatelessWidget {
  const FontAwesomeIconScreen({super.key, this.description = 'Empty!'});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FontAwesome Icon"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: Variables.getPadding(),
          child: Column(
            children: [
              Text(description),
              const SizedBox(height: 20.0),
              const Wrap(
                spacing: 10,
                runSpacing: 10,
                crossAxisAlignment: WrapCrossAlignment.end,
                children: [
                  FaIcon(FontAwesomeIcons.user),
                  FaIcon(FontAwesomeIcons.users),
                  FaIcon(FontAwesomeIcons.google),
                  FaIcon(FontAwesomeIcons.amazon),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
