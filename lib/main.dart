import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(Leyot());
}

class Leyot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final widthApp = MediaQuery.of(context).size.width;
    final heightApp = MediaQuery.of(context).size.height;
    final paddingTop = MediaQuery.of(context).padding.top;

    final myAppBar = AppBar(
      title: Text("data"),
    );
    final bodyHeigth = heightApp - paddingTop - myAppBar.preferredSize.height;

    return Scaffold(
      appBar: myAppBar,
      body: Container(
        color: Colors.grey,
        height: bodyHeigth * 0.4,
        width: widthApp,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyContainer(widthApp, heightApp),
            MyContainer(widthApp, heightApp),
            MyContainer(widthApp, heightApp),
          ],
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final double widthApp;
  final double heightApp;
  MyContainer(this.widthApp, this.heightApp);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          color: Colors.amber,
          width: widthApp * 0.25,
          height: constraints.maxHeight * 0.5,
        );
      },
    );
  }
}
