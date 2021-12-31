import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

class MovieDetails extends StatefulWidget {
  const MovieDetails();
  @override
  _MovieDetailsState createState() => _MovieDetailsState();
}

class _MovieDetailsState extends State<MovieDetails> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Color>(builder: (context, snapshot) {
      return DelayedDisplay(
        delay: Duration(milliseconds: 500),
        child: Scaffold(
          backgroundColor: snapshot.data,
          appBar: AppBar(
            title: Text('Delayed Display Deltail'),
          ),
        ),
      );
    });
  }
}
