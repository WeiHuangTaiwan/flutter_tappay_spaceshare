import 'package:flutter/material.dart';
import 'package:flutter_tappay_spaceshare/flutter_tappay_spaceshare.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('TapPay Plugin Example')),
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              final result = await FlutterTappaySpaceshare().initialize(
                apiKey: 'your_api_key',
                appId: 'your_app_id',
              );
              print('Initialization result: \$result');
            },
            child: Text('Initialize TapPay'),
          ),
        ),
      ),
    );
  }
}