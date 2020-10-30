import 'package:flutter/material.dart';
import 'package:flutter_ui_widgets/pages/create_article.dart';
import 'package:flutter_ui_widgets/pages/home_page.dart';
import 'package:flutter_ui_widgets/pages/inbox_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Widget> _pages = [
    HomePage(),
    InboxPage(),
  ];

  int _selectedIndex = 0;

  // _onTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/images/logo.png",
          width: 180,
        ),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: <Widget>[..._pages],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CreateArticle(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _selectedIndex,
      //   onTap: _onTapped,
      //   items: [
      //     BottomNavigationBarItem(
      //       title: Text("Home"),
      //       icon: Icon(Icons.home),
      //     ),
      //     BottomNavigationBarItem(
      //       title: Text("Inbox"),
      //       icon: Icon(Icons.mail),
      //     ),
      //   ],
      // ),
    );
  }
}
