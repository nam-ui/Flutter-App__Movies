import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  @override
  _MovieDetailsState createState() => _MovieDetailsState();
}

class _MovieDetailsState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          child: Text('show snackbar'),
          color: Colors.pink,
          onPressed: () {
            final snackBar = SnackBar(content: Text('Account'));
            Scaffold.of(context).showSnackBar(snackBar);
          },
        ),
      ),
    );
  }
}
