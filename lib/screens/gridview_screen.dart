import 'package:all_concepts/variables/variables.dart';
import 'package:flutter/material.dart';

import '../variables/friend_list.dart';

class GridViewScreen extends StatelessWidget {
  const GridViewScreen({super.key, this.description = "Empty!"});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: Variables.getPadding(),
          child: Column(
            children: [
              Text(description),
              const SizedBox(height: 20),

              // gridview :: count
              const Text(
                "Grid View With Fixed Cross Axis Count : GridView.count",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              GridViewCount(arrFriend: arrFriend),
              const SizedBox(height: 20),

              // gridview :: extent
              const Text(
                "Grid View With Fixed Width : GridView.extent",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              GridViewExtent(arrFriend: arrFriend),
              const SizedBox(height: 20),

              // gridview :: builder
              const Text(
                "Grid View Builder : GridView.builder",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              GridViewBuilder(arrFriend: arrFriend),
            ],
          ),
        ),
      ),
    );
  }
}

// gridview :: count
class GridViewCount extends StatelessWidget {
  const GridViewCount({super.key, required this.arrFriend});

  final List arrFriend;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 3,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        ...arrFriend.map(
          (e) => Container(
            height: 150,
            color: Colors.grey.shade200,
            child: Center(
              child: Text(e),
            ),
          ),
        ),
      ],
    );
  }
}

// gridview :: extent
class GridViewExtent extends StatelessWidget {
  const GridViewExtent({super.key, required this.arrFriend});

  final List arrFriend;

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      maxCrossAxisExtent: 160,
      children: [
        ...arrFriend.map(
          (e) => Container(
            height: 140,
            color: Colors.grey.shade300,
          ),
        ),
      ],
    );
  }
}

//gridview :: builder
class GridViewBuilder extends StatelessWidget {
  const GridViewBuilder({super.key, required this.arrFriend});

  final List arrFriend;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: GridView.builder(
          scrollDirection: Axis.vertical,
          itemCount: arrFriend.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return Container(
              color: Colors.blueGrey.shade300,
              child: Center(
                child: Text(
                  arrFriend[index],
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
