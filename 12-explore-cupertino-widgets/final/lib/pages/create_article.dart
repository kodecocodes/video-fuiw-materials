import 'package:flutter/material.dart';
import 'package:flutter_ui_widgets/widgets/form_result.dart';

class CreateArticle extends StatefulWidget {
  @override
  _CreateArticleState createState() => _CreateArticleState();
}

class _CreateArticleState extends State<CreateArticle> {
  final _formKey = GlobalKey<FormState>();

  final Map<String, dynamic> formData = {
    'title': null,
    'content': null,
    'imageUrl': null,
    'email': null,
    'isBreaking': false,
    'category': null
  };

  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Enter Valid Email';
    else
      return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Article'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Title'),
                validator: (value) =>
                    value.isEmpty ? 'Please enter Title' : null,
                onSaved: (value) => formData['title'] = value,
              ),
              SwitchListTile(
                  contentPadding: EdgeInsets.all(0),
                  title: Text('Is Breaking News'),
                  value: formData['isBreaking'],
                  onChanged: (bool value) =>
                      setState(() => formData['isBreaking'] = value)),
              TextFormField(
                decoration: InputDecoration(labelText: 'Image Url'),
                validator: (value) => !Uri.parse(value).isAbsolute
                    ? 'Please enter valid url'
                    : null,
                onSaved: (value) => formData['imageUrl'] = value,
              ),
              TextFormField(
                maxLines: 3,
                // maxLines: null,
                // keyboardType: TextInputType.multiline,
                decoration: InputDecoration(labelText: 'Content'),
                validator: (value) => value.isEmpty || value.length < 10
                    ? 'Content too short'
                    : null,
                onSaved: (value) => formData['content'] = value,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text('Category'),
              ),
              Column(
                children: <Widget>[
                  RadioListTile<int>(
                    title: const Text('Sport'),
                    value: 1,
                    groupValue: formData['category'],
                    onChanged: (value) {
                      setState(() {
                        formData['category'] = value;
                      });
                    },
                  ),
                  RadioListTile<int>(
                    title: const Text('Entertainment'),
                    value: 2,
                    groupValue: formData['category'],
                    onChanged: (value) {
                      setState(() {
                        formData['category'] = value;
                      });
                    },
                  ),
                ],
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Your Email'),
                validator: validateEmail,
                onSaved: (value) => formData['email'] = value,
              ),
              RaisedButton(
                onPressed: () {
                  final form = _formKey.currentState;
                  FocusScope.of(context).unfocus();
                  if (form.validate()) {
                    form.save();
                    print(formData);
                    form.reset();
                    _showResultDialog(context);
                  }
                },
                child: Text('Save'),
              )
            ],
          ),
        ),
      ),
    );
  }

  _showResultDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: FormResult(result: formData),
          actions: <Widget>[
            FlatButton(
              child: Text('Done'),
              onPressed: () {
                setState(() {
                  formData["isBreaking"] = false;
                  formData["category"] = null;
                });
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}
