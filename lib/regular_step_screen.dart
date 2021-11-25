import 'package:flutter/material.dart';

import 'consts.dart';

class RegularScreenData {
  final String message;
  final String nextStepRoute;

  RegularScreenData({required this.message, required this.nextStepRoute});
}

final RegularScreenData spitToCupScreenData = RegularScreenData(message: "Please spit into the designated cup",
    nextStepRoute: attachCupToKitUrl);

final RegularScreenData attachCupToKitScreenData = RegularScreenData(message: "Please attach the cup to the kit",
    nextStepRoute: cameraPageUrl);

class RegularStepScreen extends StatelessWidget {
  final RegularScreenData screenData;

  const RegularStepScreen({Key? key, required this.screenData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Labrador'),
        ),
        body: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                screenData.message,
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
                      screenData.nextStepRoute,
                    );
                  },
                )),
          ],
        )));
  }
}
