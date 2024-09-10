import 'package:flutter/material.dart';

void main(){
  runApp(const AllConceptApp());
}

class AllConceptApp extends StatelessWidget {
  const AllConceptApp ({super.key});
  
  @override 
  Widget build (BuildContext context) {
      return MaterialApp(
        title: 'All Concept Application',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
          useMaterial3: false,
        ),
        home: const HomeScreen(),
      );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Home Screen"),
      ),
    );
  }
}