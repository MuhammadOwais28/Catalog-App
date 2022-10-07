import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var days = 30;
    var name = "Flutter";
    return Scaffold(
      appBar: AppBar(title: const Text("Catalog App")),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of $name."),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
