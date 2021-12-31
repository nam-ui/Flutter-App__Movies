import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:movie_super/model/NavigataBottomModel.dart';

import 'package:movie_super/screen/details/MovieDetails.dart';
import '../../accounts/Accounts.dart';
import '../../home/home_screen.dart';

class NavigationBottom extends StatefulWidget {
  @override
  _NavigationBottomState createState() => _NavigationBottomState();
}

class _NavigationBottomState extends State<NavigationBottom> {
  PageController _pageController = PageController();
  final _widgetOptions = [const Home(), const MovieDetails(), const Account()];
  final List<NavigataBottomModel> titles = [
    NavigataBottomModel(IconData(0xe318, fontFamily: 'MaterialIcons'), "Home"),
    NavigataBottomModel(IconData(0xf37f, fontFamily: 'MaterialIcons'), "Cart"),
    NavigataBottomModel(
        IconData(0xf402, fontFamily: 'MaterialIcons'), "Account"),
  ];

  @override
  Widget build(BuildContext context) {
    _pageController =
        PageController(initialPage: 0, keepPage: false, viewportFraction: 1.0);
    return StreamBuilder<Color>(builder: (context, snapshot) {
      return Scaffold(
        body: NotificationListener<ScrollNotification>(
          child: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _pageController,
            children: _widgetOptions.map((c) => Container(child: c)).toList(),
          ),
        ),
        bottomNavigationBar: BubbleBottomBar(
          opacity: .2,
          items: titles.map((title) {
            return BubbleBottomBarItem(
                backgroundColor: Colors.red,
                icon: Icon(
                  title.icon,
                  color: Colors.black,
                ),
                activeIcon: Icon(
                  title.icon,
                  color: Colors.red,
                ),
                title: Text(title.title));
          }).toList(),
        ),
      );
    });
  }
}
