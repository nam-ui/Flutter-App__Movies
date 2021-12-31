import 'package:flutter/material.dart';
import 'package:delayed_display/delayed_display.dart';

class Home extends StatefulWidget {
  const Home();
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Color>(builder: (context, snapshot) {
      return DelayedDisplay(
        delay: Duration(seconds: 1),
        child: Scaffold(
          backgroundColor: snapshot.data,
          body: Center(
            child: Text(
              'Hello World',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
      );
    });
  }
}
