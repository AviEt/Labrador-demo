import 'package:flutter/material.dart';
import 'package:route_experiments/camera_singleton.dart';
import 'route_generator.dart';
import 'camera_singleton.dart';
import 'package:camera/camera.dart';
import 'welcome_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Obtain a list of the available cameras on the device.
  final cameras = await availableCameras();
  CameraSingleton.cameras = cameras;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Route demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WelcomeScreen(),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

