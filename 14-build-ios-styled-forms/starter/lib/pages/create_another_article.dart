import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateAnotherArticle extends StatelessWidget {
  const CreateAnotherArticle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('New Article'),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[],
        ),
      ),
    );
  }
}
