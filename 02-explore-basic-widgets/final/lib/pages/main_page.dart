import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter UI Widgets'),
      ),
      // body: Container(
      //   margin: const EdgeInsets.all(32),
      //   padding: const EdgeInsets.all(16),
      //   width: 200,
      //   height: 200,
      //   // color: Colors.green,
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(16),
      //     border: Border.all(width: 2, color: Colors.red),
      //     color: Colors.green,
      //   ),
      //   child: const Text('Main Page'),
      // ),
      // body: Column(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.blue,
            child: const Text(
              '1',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 32),
            ),
          ),
          Container(
            color: Colors.blue,
            child: const Text(
              '2',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 32),
            ),
          ),
          Container(
            color: Colors.blue,
            child: const Text(
              '3',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 32),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Clicked');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
