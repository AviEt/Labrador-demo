import 'package:camera/camera.dart';

class CameraSingleton {
  static CameraSingleton? instance;
  static late List<CameraDescription> cameras;

  CameraSingleton._internal();

  factory CameraSingleton() => instance ??= CameraSingleton._internal();
}