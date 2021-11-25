import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Routing App'),
        ),
        body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Text(
                    'First Page',
                    style: TextStyle(fontSize: 50)
                ),
                ElevatedButton(
                  child: Text('Go to second'),
                  onPressed: () {
                    // Pushing a named route
                    Navigator.of(context).pushNamed(
                      '/sample_wait',
                    );
                  },
                )
              ],
            )));
  }
}