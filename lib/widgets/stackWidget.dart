import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.greenAccent,
      child: Stack(
        // textDirection: TextDirection.rtl,
        alignment: Alignment.bottomRight,
        children: <Widget>[
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.cyan,
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.teal,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class StackWidgetWithPositioned extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * .8,
        height: MediaQuery.of(context).size.height * .8,
        color: Colors.greenAccent,
        child: Stack(
          alignment: Alignment.topLeft,
          children: <Widget>[
            Positioned(
              top: 100,
              left: 100,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.black,
              ),
            ),
            Positioned(
              bottom: 100,
              right: 100,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.yellow,
              ),
            ),
            Positioned(
              top: 20,
              right: 0,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.teal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
