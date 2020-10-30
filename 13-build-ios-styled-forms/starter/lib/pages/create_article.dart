import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateArticle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('New Article'),
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[],
        ),
      ),
    );
  }
}
