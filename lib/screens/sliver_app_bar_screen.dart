import 'package:flutter/material.dart';

class SliverAppBarScreen extends StatelessWidget {
  const SliverAppBarScreen({super.key, this.description = "Empty!"});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.pink,
              ),
              title: const Text("SliverAppBar"),
              centerTitle: true,
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 200,
                color: Colors.grey.shade200,
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 200,
                color: Colors.grey.shade300,
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 200,
                color: Colors.grey.shade200,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
