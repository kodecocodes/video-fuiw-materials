import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';
import 'inbox_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          backgroundColor: CupertinoColors.systemGrey5,
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(CupertinoIcons.home),
            ),
            const BottomNavigationBarItem(
              label: 'Inbox',
              icon: Icon(CupertinoIcons.mail),
            ),
          ],
        ),
        tabBuilder: (context, index) {
          switch (index) {
            case 0:
              return CupertinoTabView(builder: (context) {
                return const HomePage();
              });
            case 1:
              return CupertinoTabView(builder: (context) {
                return const InboxPage();
              });
            default:
              return Container();
          }
        },
      ),
    );
  }
}
