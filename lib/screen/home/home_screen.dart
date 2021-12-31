import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home();
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Color>(builder: (context, snapshot) {
      return Scaffold(
        body: NotificationListener<ScrollNotification>(
          child: PageView(
            physics: const NeverScrollableScrollPhysics(),
            onPageChanged: (page) {},
          ),
        ),
      );
    });
  }
}
