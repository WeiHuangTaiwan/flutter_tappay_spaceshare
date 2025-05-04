import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'src/method_channel_flutter_tappay_spaceshare.dart';

abstract class FlutterTappaySpacesharePlatform extends PlatformInterface {
  FlutterTappaySpacesharePlatform() : super(token: _token);
  static final Object _token = Object();

  static FlutterTappaySpacesharePlatform _instance = MethodChannelFlutterTappaySpaceshare();

  static FlutterTappaySpacesharePlatform get instance => _instance;

  static set instance(FlutterTappaySpacesharePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> initialize({required String apiKey, required String appId}) {
    throw UnimplementedError('initialize() has not been implemented.');
  }
}