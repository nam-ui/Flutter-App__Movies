import 'package:flutter/material.dart';

class MovieDetails extends StatefulWidget {
  const MovieDetails();
  @override
  _MovieDetailsState createState() => _MovieDetailsState();
}

class _MovieDetailsState extends State<MovieDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          child: Text('show snackbar'),
          color: Colors.pink,
          onPressed: () {
            final snackBar = SnackBar(content: Text('MovieDetail'));
            Scaffold.of(context).showSnackBar(snackBar);
          },
        ),
      ),
    );
  }
}
