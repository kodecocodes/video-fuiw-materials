import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_widgets/pages/home_page.dart';
import 'package:flutter_ui_widgets/pages/inbox_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          backgroundColor: CupertinoColors.systemGrey5,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.mail),
              title: Text('Inbox'),
            ),
          ],
        ),
        tabBuilder: (context, index) {
          switch (index) {
            case 0:
              return CupertinoTabView(builder: (context) {
                return HomePage();
              });
            case 1:
              return CupertinoTabView(builder: (context) {
                return InboxPage();
              });
            default:
              return Container();
          }
        },
      ),
    );
  }
}
