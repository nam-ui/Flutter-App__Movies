import 'package:flutter/material.dart';
import 'package:delayed_display/delayed_display.dart';

class Home extends StatefulWidget {
  const Home();
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Color>(builder: (context, snapshot) {
      return DelayedDisplay(
        delay: Duration(milliseconds: 500),
        child: Scaffold(
          backgroundColor: snapshot.data,
          appBar: AppBar(
            title: Text('Delayed Display'),
          ),
        ),
      );
    });
  }
}
