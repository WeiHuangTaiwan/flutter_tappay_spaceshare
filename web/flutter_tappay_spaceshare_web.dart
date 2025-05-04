import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:flutter_tappay_spaceshare/flutter_tappay_spaceshare_web.dart';

void registerWith(Registrar registrar) {
  FlutterTappaySpacesharePlatform.instance = FlutterTappaySpaceshareWeb();
}

final PluginRegistrarCallback flutterTappaySpacesharePluginRegistrar = registerWith;