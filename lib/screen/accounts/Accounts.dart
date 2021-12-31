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
