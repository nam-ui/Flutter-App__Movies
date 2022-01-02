import 'package:flutter/material.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:movie_super/model/custom_appbar.dart';

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
      var data = snapshot.data;
      return DelayedDisplay(
        delay: Duration(milliseconds: 500),
        child: Scaffold(
          backgroundColor: snapshot.data,
          appBar: CustomAppBar(
            height: 85,
            color: Colors.transparent,
            child: buildHeader(),
          ),
        ),
      );
    });
  }

  Widget buildHeader() {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  icon: Image.asset("assets/images/logo.png"),
                  onPressed: () {
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
