import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Named();
  }
}

class Named extends StatefulWidget {
  @override
  _NamedState createState() => _NamedState();
}

class _NamedState extends State<Named> {
  Row Answers() {}
  List<Icon> scoreKeeper = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 8,
                child: Center(
                  child: Text(
                    'What Question do you want to ask?',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        scoreKeeper.add(Icon(Icons.check, color: Colors.green));
                      });
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green)),
                    child: Text(
                      'True',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red)),
                      onPressed: () {
                        setState(() {
                          scoreKeeper
                              .add(Icon(Icons.cancel, color: Colors.red));
                        });
                      },
                      child:
                          Text('False', style: TextStyle(color: Colors.white))),
                ),
              ),
              Row(
                children: scoreKeeper,
              )

              //Todo: I want to code all day.
            ],
          ),
        ),
      ),
    );
  }
}
