import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.teal,
      child: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 20),
            width: 300,
            height: 300,
            color: Colors.red,
            child: Image.asset(
              'assets/car01.jpg',
              // fit: BoxFit.contain,
              fit: BoxFit.cover,
              // fit: BoxFit.fill,
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Image(
              image: AssetImage('assets/car02.jpg'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Image.network(
                "https://simeononsecurity.com/img/cover/a_cartoon_illustration_depicting_a_home_with_interconnected_devices_731x410.webp"),
          ),
        ],
      ),
    );
  }
}
