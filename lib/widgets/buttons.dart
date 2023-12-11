import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          print("Button clicked");
        },

        onLongPress: () {
          print("Long pressed");
        },

        // onPressed: null, /// prevent click
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.yellow),
          foregroundColor:
              MaterialStateProperty.all<Color>(Colors.red), // text color
        ),

        child: Text("Click me"),
      ),
    );
  }
}

class OutlinedButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: OutlinedButton(
        onPressed: () {
          print("Clicked");
        },
        child: Text('Outline Button'),
      ),
    );
  }
}
