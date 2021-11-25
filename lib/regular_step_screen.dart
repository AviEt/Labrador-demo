import 'package:flutter/material.dart';

import 'consts.dart';

class RegularStepScreen extends StatelessWidget {
  const RegularStepScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Routing App'),
        ),
        body: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Please spit into the designated cup',
                style: TextStyle(fontSize: 35),
                textAlign: TextAlign.center,
              ),
            ),
            const Text('Click on the button when you' 're ready',
                style: TextStyle(fontSize: 12)),
            Padding(
                padding: EdgeInsets.all(20.0),
                child: ElevatedButton(
                  child: Text('I' 'm ready'),
                  onPressed: () {
                    // Pushing a named route
                    Navigator.of(context).pushNamed(
                      cameraPageUrl,
                    );
                  },
                )),
          ],
        )));
  }
}
