import 'package:flutter/material.dart';

import '../variables/variables.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key, this.description = "Empty!"});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer"),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      endDrawer: Drawer(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: DrawerHeader(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary),
                child: const Center(
                  child: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Text(
              "Hello!",
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: Variables.getPadding(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                description,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),

              // text button
              const SizedBox(height: 20.0),

              //   shoe drawer with button
              Builder(
                builder: (context) => ElevatedButton(
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  child: const Text("Show Drawer"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
