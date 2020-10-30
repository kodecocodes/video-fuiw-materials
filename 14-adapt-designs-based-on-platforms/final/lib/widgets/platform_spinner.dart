import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformSpinner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isIOS = Theme.of(context).platform == TargetPlatform.iOS;
    return Center(
      child: isIOS ? CupertinoActivityIndicator() : CircularProgressIndicator(),
    );
  }
}
