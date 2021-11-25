import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Labrador'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Congratulations!!!",
                style: TextStyle(fontSize: 35),
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              "You've got pre-diabetes!!!! Yayyyyy",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
