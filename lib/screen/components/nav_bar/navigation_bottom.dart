import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:movie_super/model/NavigataBottomModel.dart';
import 'package:movie_super/screen/details/MovieDetails.dart';

import '../../accounts/Accounts.dart';
import '../../home/home_screen.dart';

class NavigationBottom extends StatefulWidget {
  const NavigationBottom({Key? key}) : super(key: key);
  @override
  _NavigationBottomState createState() => _NavigationBottomState();
}

class _NavigationBottomState extends State<NavigationBottom> {
  // Page view controller
  PageController _pageController = PageController();
  final _widgetOptions = [const Home(), const MovieDetails(), const Account()];

  // List navigation_bottom
  int currentIndex = 0;
  final List<NavigataBottomModel> titles = [
    NavigataBottomModel(IconData(0xe318, fontFamily: 'MaterialIcons'), "Home"),
    NavigataBottomModel(IconData(0xf37f, fontFamily: 'MaterialIcons'), "Cart"),
    NavigataBottomModel(
        IconData(0xee34, fontFamily: 'MaterialIcons'), "Account"),
  ];

  @override
  Widget build(BuildContext context) {
    _pageController =
        PageController(initialPage: 0, keepPage: false, viewportFraction: 1.0);
    return StreamBuilder<Color>(builder: (context, snapshot) {
      return Scaffold(
        body: NotificationListener<ScrollNotification>(
          child: PageView(
            pageSnapping: true,
            physics: const NeverScrollableScrollPhysics(),
            controller: _pageController,
            children: _widgetOptions.map((c) => Container(child: c)).toList(),
          ),
        ),
        bottomNavigationBar: BubbleBottomBar(
          opacity: .2,
          currentIndex: currentIndex,
          onTap: (page) {
            _pageController.animateToPage(page!,
                curve: Curves.easeInOutQuad,
                duration: Duration(milliseconds: 250));
            setState(() {
              currentIndex = page;
            });
          },
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
              title: Text(title.title),
            );
          }).toList(),
        ),
      );
    });
  }
}
