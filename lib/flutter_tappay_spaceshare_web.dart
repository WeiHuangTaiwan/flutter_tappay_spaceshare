import 'dart:js' as js;
import 'flutter_tappay_spaceshare_platform_interface.dart';

class FlutterTappaySpaceshareWeb extends FlutterTappaySpacesharePlatform {
  @override
  Future<String?> initialize({required String apiKey, required String appId}) async {
    // TODO: Initialize TPDirect SDK via JS interop:
    // js.context.callMethod('TPDirect.setupSDK', [int.parse(appId), apiKey, sandbox ? 'sandbox' : 'production']);
    return 'Initialized';
  }

  /// Stub for getTappayPrime via JS interop
  Future<String?> getTappayPrime({
    required String appId,
    required String appKey,
    required bool sandbox,
    required String cardNumber,
    required String dueMonth,
    required String dueYear,
    required String ccv,
  }) async {
    // TODO: Call TPDirect.card.getPrime() via JS interop and return prime
    // Example:
    // js.context.callMethod('TPDirect.setupSDK', [int.parse(appId), appKey, sandbox ? 'sandbox' : 'production']);
    // final result = js.context.callMethod('TPDirect.card.getPrime', [
    //   js.allowInterop((jsResult) {
    //     return jsResult['card']['prime'] as String;
    //   })
    // ]);
    return 'dummy_prime';
  }
}