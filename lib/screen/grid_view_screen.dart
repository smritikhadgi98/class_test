import 'package:class_test/common/my_button.dart';
import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  final String name = "SMRITI";

  const GridViewScreen({super.key}); // Change this to your name

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: GridView.count(
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2, // Number of buttons based on name length
            children: List.generate(name.length, (index) {
              return MyButton(name[index]);
            }),
          ),
        ),
      ),
    );
  }
}
