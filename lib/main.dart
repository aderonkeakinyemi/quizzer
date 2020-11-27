import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 4,
              child: Text(
                'What Question do you want to ask?',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Expanded(
              flex: 1,
              child: FlatButton(
                  onPressed: () {},
                  child: Text('True', style: TextStyle(color: Colors.white)),
                  color: Colors.green),
            ),
            SizedBox(height: 30.0),
            Expanded(
              flex: 1,
              child: FlatButton(
                  color: Colors.red,
                  onPressed: () {},
                  child: Text('False', style: TextStyle(color: Colors.white))),
            )
          ],
        )),
      ),
    );
  }
}
