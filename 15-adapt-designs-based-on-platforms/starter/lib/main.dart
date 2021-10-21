import 'package:flutter/material.dart';

import 'pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

final lightTheme = ThemeData(
  fontFamily: 'Lato',
  textTheme: const TextTheme(
    headline5: TextStyle(fontSize: 24),
  ),
);
final darkTheme = ThemeData(
  brightness: Brightness.dark,
  fontFamily: 'Lato',
  textTheme: const TextTheme(
    headline5: TextStyle(fontSize: 24),
  ),
);

// This widget is the root of your application.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Widgets',
      theme: lightTheme.copyWith(
        // platform: TargetPlatform.iOS,
        colorScheme: lightTheme.colorScheme.copyWith(
          primary: Colors.red,
          secondary: Colors.green,
        ),
      ),
      darkTheme: darkTheme,
      // themeMode: ThemeMode.dark,
      home: const MainPage(),
    );
  }
}
