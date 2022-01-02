import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account();
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Color>(builder: (context, snapshot) {
      return DelayedDisplay(
        delay: Duration(milliseconds: 500),
        child: Scaffold(
          backgroundColor: snapshot.data,
          appBar: AppBar(
            title: Text('Movie Plus'),
          ),
        ),
      );
    });
  }
}
