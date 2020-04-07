import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(TimerApp());
class TimerApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new TimerAppState();
  }
}

class TimerAppState extends State<TimerApp> {
  static const duration = const Duration(seconds: 1);
  int secondsPassed = 0;
  bool isActive = false;
  Timer timer;
  void handleTick() {
    if (isActive) {
      setState(() {
        secondsPassed = secondsPassed + 1;
      });
    }
  }

@override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.red,
          items: <Widget>[
            Icon(Icons.add, size: 30),
            Icon(Icons.list, size: 30),
            Icon(Icons.compare_arrows, size: 30),
            Icon(Icons.call_split, size: 30),
            Icon(Icons.perm_identity, size: 30),
          ],
          onTap: (index) {
          },
        ),
        body: Container(color: Colors.red),
    );
  } 
  
  @override
    Widget build(BuildContext context) {
      MaterialApp();
      if (timer == null)
      timer = Timer.periodic(duration, (Timer t) {
         handleTick();
      });
          
              int seconds = secondsPassed % 60;
              int minutes = secondsPassed ~/ 60;
              int hours = secondsPassed ~/ (60 * 60);
          
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Welcome to Flutter',
                theme: ThemeData(
                  primarySwatch: Colors.red,
                ),
                home: Scaffold(
                  backgroundColor: Colors.blueGrey,
                  appBar: AppBar(
                    title: Text('Timer'),
                  ),
                  body: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CustomTextContainer(
                                label: 'HRS', value: hours.toString().padLeft(2, '0')),
                            CustomTextContainer(
                                label: 'MIN', value: minutes.toString().padLeft(2, '0')),
                            CustomTextContainer(
                                label: 'SEC', value: seconds.toString().padLeft(2, '0')),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: RaisedButton(
                            child: Text(isActive ? 'STOP' : 'START'),
                            onPressed: () {
                              setState(() {
                                isActive = !isActive;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }
          }
          
          class CustomTextContainer extends StatelessWidget {
            CustomTextContainer({this.label, this.value});
          
            final String label;
            final String value;
          
            @override
            Widget build(BuildContext context) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                padding: EdgeInsets.all(20),
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.circular(10),
                  color: Colors.black,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      '$value',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '$label',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              );
            }
          }
