import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final String letter;

  const MyButton(this.letter, {super.key});

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  bool isColored = false;
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (!isColored) {
            isColored = true;
          } else {
            isVisible = false;
          }
        });
      },
      child: Visibility(
        visible: isVisible,
        child: Container(
          width: 50,
          height: 50,
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: isColored ? Colors.green : Colors.amber,
          ),
          child: Center(
            child: Text(
              widget.letter,
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
