import 'package:flutter/material.dart';
import 'package:flutter_ui_widgets/utils/strings.dart';

class FormResult extends StatelessWidget {
  final Map<String, dynamic> result;

  const FormResult({Key key, this.result}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      child: ListView.builder(
        itemCount: result.length,
        itemBuilder: (BuildContext context, int index) {
          String key = result.keys.elementAt(index);
          String title = camelCaseToTitle(key);
          return new Column(
            children: <Widget>[
              new ListTile(
                title: new Text("$title"),
                subtitle: new Text("${result[key]}"),
              ),
              new Divider(
                height: 2.0,
              ),
            ],
          );
        },
      ),
    );
  }
}
