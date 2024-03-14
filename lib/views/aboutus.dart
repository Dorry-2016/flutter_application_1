import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("flutter Readmore"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: ElevatedButton(
            child: Text('hey you'),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(30), backgroundColor: Colors.black)),
      ),
    );
    // ignore: dead_code
    Container(
      constraints: BoxConstraints.expand(
        height:
            Theme.of(context).textTheme.headlineMedium!.fontSize! * 1.1 + 200.0,
      ),
      padding: const EdgeInsets.all(8.0),
      color: Colors.blue[600],
      alignment: Alignment.center,
      transform: Matrix4.rotationZ(0.1),
      child: Text('Hello World',
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: Colors.white)),
    );
  }
}
