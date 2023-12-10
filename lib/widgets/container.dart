import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 200,
      // height: 200,
      width: MediaQuery.of(context).size.width * .6,
      height: MediaQuery.of(context).size.height * .4,
      // color: Colors.red,
      // margin: EdgeInsets.all(100),
      margin: EdgeInsets.only(top: 150, left: 70),
      // padding: EdgeInsets.all(100),
      padding: EdgeInsets.only(bottom: 20, right: 100),
      decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all(
          color: Colors.green,
          width: 4,
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
              color: Colors.grey,
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(10, 10)),
        ],
      ),
      child: Center(child: Text('Hello World')),
    );
  }
}
