import 'package:flutter/material.dart';

class PaddingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 200),
      child: Text('Padding widget'),
    );
  }
}

/// Center widget is used to align
/// it's child of it's parent
class CenterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 400,
      decoration: BoxDecoration(
          color: Colors.green,
          border: Border.all(
            width: 2,
          )),
      child: Center(
        child: Text('Center Widget inside container'),
      ),
    );
  }
}

// SizedBox have mainly setting width and height
class SizedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 300,
      child: Center(
        child: Text('Inside SizedBox widget'),
      ),
    );
  }
}

class AlignWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      // alignment: Alignment.center,
      // alignment: Alignment.center,
      alignment: Alignment.bottomRight,
      child: Text('Align widget'),
    );
  }
}
