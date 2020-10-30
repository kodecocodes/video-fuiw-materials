import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InboxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Image.asset(
          "assets/images/logo_dark.png",
          width: 180,
        ),
      ),
      child: ListView(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(),
            title: Text("Burna Boy"),
            subtitle: Text(
              "I don’t really know what a hit battle is but I’m willing to go toe to toe with ANY worthy challenger.",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: Text("02:05 PM"),
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Text("Reekado Banks"),
            subtitle: Text("I’m game that energy let’s get it"),
            trailing: Text("05:59 PM"),
          ),
        ],
      ),
    );
  }
}
