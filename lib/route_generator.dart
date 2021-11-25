import 'package:flutter/material.dart';
import 'package:route_experiments/card_camera_screen.dart';
import 'package:route_experiments/sample_wait_screen.dart';
import 'package:route_experiments/welcome_screen.dart';
import 'package:route_experiments/results_screen.dart';

import 'consts.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings)  {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case homePageUrl:
        return MaterialPageRoute(builder: (_) => WelcomeScreen());
      case cameraPageUrl:
        return MaterialPageRoute(builder: (_) => CardCameraScreen());
      case resultsPageUrl:
        return MaterialPageRoute(builder: (_) => const ResultsScreen(data: "Results are ready"));
      case waitResultsPageUrl:
        return MaterialPageRoute(builder: (_) => SampleWaitScreen());
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
