import 'package:flutter/material.dart';

import 'pages/main_page.dart';

void main() => runApp(MyApp());

final lightTheme = ThemeData(
  primaryColor: Colors.red,
  accentColor: Colors.green,
  fontFamily: "Lato",
  textTheme: TextTheme(
    headline: TextStyle(fontSize: 24),
  ),
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter UI Widget",
      theme: lightTheme,
      darkTheme: ThemeData.dark(),
      // themeMode: ThemeMode.dark,
      home: MainPage(),
    );
  }
}
