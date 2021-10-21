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
          children: <Widget>[
            const CupertinoTextField(
              prefix: Icon(
                CupertinoIcons.news_solid,
                color: CupertinoColors.systemGrey,
                size: 32,
              ),
              placeholder: 'Article Title',
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              clearButtonMode: OverlayVisibilityMode.editing,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 0,
                    color: CupertinoColors.systemGrey,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32),
            Container(
              decoration: BoxDecoration(
                color: CupertinoColors.systemGrey5,
                borderRadius: BorderRadius.circular(32),
              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 15,
                  ),
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32),
            CupertinoButton(
              color: Theme.of(context).primaryColor,
              child: const Text('Save'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
