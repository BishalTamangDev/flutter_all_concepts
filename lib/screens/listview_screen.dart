import 'package:all_concepts/variables/variables.dart';
import 'package:flutter/material.dart';

import '../variables/friend_list.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key, this.description = 'Empty!'});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Screen"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: Variables.getPadding(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(description),
              const SizedBox(height: 20.0),

              // horizontal list view
              const Center(
                child: Text(
                  "Horizontal List View",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              HorizontalListView(arrFriend: arrFriend),
              const SizedBox(height: 20.0),

              // simple list view
              SimpleListView(arrFriend: arrFriend),
              const SizedBox(height: 20.0),

              // builder list view
              BuilderListView(arrFriend: arrFriend),
              const SizedBox(height: 20.0),

              // separated list view
              SeparatedListView(arrFriend: arrFriend),
            ],
          ),
        ),
      ),
    );
  }
}

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({super.key, required this.arrFriend});

  final List arrFriend;

  @override
  Widget build(BuildContext context) {
    if (arrFriend.isEmpty) {
      return const Center(
        child: Text("Empty!"),
      );
    } else {
      return SizedBox(
        height: 56.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: arrFriend.length,
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                    '${arrFriend[index][0].toUpperCase() + arrFriend[index].substring(1)}'),
              ),
            );
          },
        ),
      );
    }
  }
}

class SimpleListView extends StatelessWidget {
  const SimpleListView({super.key, required this.arrFriend});

  final List arrFriend;

  @override
  Widget build(BuildContext context) {
    if (arrFriend.isEmpty) {
      return const Center(
        child: Text("Simple list view is empty!"),
      );
    } else {
      return ListView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          const Center(
            child: Text(
              "Simple List View",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                  'Hello, ${arrFriend[0][0].toUpperCase() + arrFriend[0].substring(1)}!'),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                  'Hello, ${arrFriend[1][0].toUpperCase() + arrFriend[1].substring(1)}!'),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                  'Hello, ${arrFriend[2][0].toUpperCase() + arrFriend[2].substring(1)}!'),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                  'Hello, ${arrFriend[3][0].toUpperCase() + arrFriend[3].substring(1)}!'),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                  'Hello, ${arrFriend[3][0].toUpperCase() + arrFriend[0].substring(1)}!'),
            ),
          ),
        ],
      );
    }
  }
}

class BuilderListView extends StatelessWidget {
  const BuilderListView({super.key, required this.arrFriend});

  final List arrFriend;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        const Center(
          child: Text(
            "Builder List View",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 10.0),
        ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(arrFriend[index]),
              ),
            );
          },
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: arrFriend.length,
        ),
      ],
    );
  }
}

class SeparatedListView extends StatelessWidget {
  const SeparatedListView({super.key, required this.arrFriend});

  final List arrFriend;

  @override
  Widget build(BuildContext context) {
    if (arrFriend.isEmpty) {
      return const Center(
        child: Text("Empty!"),
      );
    } else {
      return ListView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          const Center(
            child: Text(
              "Separated List View",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          ListView.separated(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(arrFriend[index]),
              );
            },
            separatorBuilder: (context, index) {
              return const Divider(
                height: 5,
                color: Colors.blueGrey,
              );
            },
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: arrFriend.length,
          ),
        ],
      );
    }
  }
}
