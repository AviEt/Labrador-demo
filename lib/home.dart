import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
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
                      '/second',
                    );
                  },
                )
              ],
            )));
  }
}