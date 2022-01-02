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
          body: Container(),
        ),
      );
    });
  }

// Header home icon_menu + search icon
  Widget buildHeader() {
    var children2 = <Widget>[
      const Text(
        "Movie Plus",
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    ];
    return Row(
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 7.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    IconButton(
                      padding: const EdgeInsets.only(left: 0.0),
                      icon: Image.asset("assets/images/logo_assets.png"),
                      onPressed: () {},
                    ),
                    Padding(
                        padding: const EdgeInsets.only(
                          left: 7.0,
                        ),
                        child: Row(children: children2)),
                  ],
                ),
                IconButton(
                  padding: const EdgeInsets.fromLTRB(0, 0, 5, 5),
                  iconSize: 40,
                  onPressed: () async {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
