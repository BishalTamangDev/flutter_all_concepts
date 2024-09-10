import 'package:all_concepts/variables/variables.dart';
import 'package:flutter/material.dart';

class ListTileScreen extends StatelessWidget {
  const ListTileScreen(
      {super.key, this.description = "Empty!", required this.arrFriend});

  final String description;

  final List arrFriend;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListTile"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: Variables.getPadding(),
          child: SizedBox(
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: arrFriend.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    onTap: () => print("Hello, ${arrFriend[index]}!"),
                    leading: const CircleAvatar(
                      child: Icon(Icons.verified_user_sharp),
                    ),
                    title: Text(arrFriend[index]),
                    subtitle: Text("${arrFriend[index]}@gmail.com"),
                    trailing: const Icon(Icons.add),
                    isThreeLine: false,
                    focusColor: Colors.red,
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
