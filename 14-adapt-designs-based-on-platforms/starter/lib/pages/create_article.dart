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
          children: <Widget>[
            CupertinoTextField(
              prefix: Icon(
                CupertinoIcons.news_solid,
                color: CupertinoColors.lightBackgroundGray,
                size: 32,
              ),
              placeholder: "Article Title",
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              clearButtonMode: OverlayVisibilityMode.editing,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 0,
                    color: CupertinoColors.inactiveGray,
                  ),
                ),
              ),
            ),
            SizedBox(height: 32),
            Container(
              decoration: BoxDecoration(
                color: CupertinoColors.systemGrey5,
                borderRadius: BorderRadius.circular(32),
              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 15,
                  ),
                  hintText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                ),
              ),
            ),
            SizedBox(height: 32),
            CupertinoButton(
              color: Theme.of(context).primaryColor,
              child: Text("Save"),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
