import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Timer'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CustomTextContainer(),
              CustomTextContainer(),
              CustomTextContainer(),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('00');
  }
}