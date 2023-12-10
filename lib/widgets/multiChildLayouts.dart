import 'package:flutter/material.dart';

/// NOTE Row widget
/// NOTE mainAccessAlignment => X  axis alignment (horizontal)
/// NOTE crossAccessAlignment => Y axis alignment (vertical)
///
/// NOTE Column widget
/// NOTE mainAccessAlignment => Y  axis alignment (vertical)
/// NOTE crossAccessAlignment => X axis alignment (horizontal)

class RowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.greenAccent,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.start, /// default
        // mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.end,
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        // crossAxisAlignment: CrossAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        // textDirection: TextDirection.ltr, /// default
        textDirection: TextDirection.rtl,

        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            color: Colors.green,
            child: Center(child: Text('One')),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
            child: Center(child: Text('Two')),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.cyan,
            child: Center(child: Text('Three')),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.black,
            child: Center(
                child: Text(
              'Four',
              style: TextStyle(color: Colors.white),
            )),
          ),
        ],
      ),
    );
  }
}

class ColumnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.greenAccent,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start, /// default
        // mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.end,
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        // crossAxisAlignment: CrossAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        // verticalDirection: VerticalDirection.down, /// default
        verticalDirection: VerticalDirection.up,

        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
            child: Center(
              child: Text('One'),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.green,
            child: Center(
              child: Text('Two'),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
            child: Center(
              child: Text('Three'),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.black,
            child: Center(
                child: Text(
              'Four',
              style: TextStyle(color: Colors.white),
            )),
          ),
        ],
      ),
    );
  }
}
