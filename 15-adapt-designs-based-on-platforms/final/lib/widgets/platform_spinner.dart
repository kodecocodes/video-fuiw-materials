import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformSpinner extends StatelessWidget {
  const PlatformSpinner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isIOS = Theme.of(context).platform == TargetPlatform.iOS;
    return Center(
      child: isIOS
          ? const CupertinoActivityIndicator()
          : const CircularProgressIndicator(),
    );
  }
}
