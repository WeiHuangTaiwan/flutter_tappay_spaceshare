import 'package:flutter/services.dart';
import 'flutter_tappay_spaceshare_platform_interface.dart';

class FlutterTappaySpaceshare {
  // Method channel for direct calls from FlutterFlow custom actions
  static const MethodChannel _channel = MethodChannel('flutter_tappay_spaceshare');

  /// Initializes the TapPay SDK via the platform interface
  Future<String?> initialize({required String apiKey, required String appId}) {
    return FlutterTappaySpacesharePlatform.instance.initialize(
      apiKey: apiKey,
      appId: appId,
    );
  }

  /// Requests a TapPay prime token for card payments
  ///
  /// Parameters:
  /// - [appId]: Your TapPay App ID
  /// - [appKey]: Your TapPay App Key
  /// - [sandbox]: Use sandbox environment if true
  /// - [cardNumber]: Credit card number digits only
  /// - [dueMonth]: Expiry month (MM)
  /// - [dueYear]: Expiry year (YY or YYYY)
  /// - [ccv]: Card verification code
  ///
  /// Returns the prime token as [String], or null if an error occurred.
  static Future<String?> getTappayPrime({
    required String appId,
    required String appKey,
    required bool sandbox,
    required String cardNumber,
    required String dueMonth,
    required String dueYear,
    required String ccv,
  }) async {
    final String? prime = await _channel.invokeMethod<String>('getTappayPrime', {
      'appId': appId,
      'appKey': appKey,
      'sandbox': sandbox,
      'cardNumber': cardNumber,
      'dueMonth': dueMonth,
      'dueYear': dueYear,
      'ccv': ccv,
    });
    return prime;
  }
}
