import 'dart:async';

import 'package:flutter/material.dart';

import 'consts.dart';

class SampleWaitScreen extends StatefulWidget {
  const SampleWaitScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState()  => _SampleWaitScreenState();

}

class _SampleWaitScreenState extends State<SampleWaitScreen> {
  int _counter = 3;
  Timer? _timer;

  @override
  void initState() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          _timer!.cancel();
          Future.delayed(Duration(milliseconds: 1500), () {
            Navigator.of(context).pushNamed(
              resultsPageUrl,
            );
          });
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Timer App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            (_counter > 0)
                ? Text("")
                : Text(
              "DONE!",
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 48,
              ),
            ),
            Text(
              '$_counter',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 48,
              ),
            ),
            // ElevatedButton (
            //   onPressed: () => _startTimer(),
            //   child: Text("Start 10 second count down"),
            // ),
          ],
        ),
      ),
    );
  }
}