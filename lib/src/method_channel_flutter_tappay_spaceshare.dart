import 'package:flutter/services.dart';
import '../flutter_tappay_spaceshare_platform_interface.dart';

class MethodChannelFlutterTappaySpaceshare extends FlutterTappaySpacesharePlatform {
  final methodChannel = const MethodChannel('flutter_tappay_spaceshare');

  @override
  Future<String?> initialize({required String apiKey, required String appId}) async {
    final version = await methodChannel.invokeMethod<String>('initialize', {
      'apiKey': apiKey,
      'appId': appId,
    });
    return version;
  }
}