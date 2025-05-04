package com.spaceshare.flutter_tappay_spaceshare

import android.content.Context
import androidx.annotation.NonNull
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.FlutterPlugin.FlutterPluginBinding
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler

public class FlutterTappaySpacesharePlugin: FlutterPlugin, MethodCallHandler {
  private lateinit var channel : MethodChannel
  private lateinit var context: Context

  override fun onAttachedToEngine(@NonNull binding: FlutterPluginBinding) {
    context = binding.applicationContext
    channel = MethodChannel(binding.binaryMessenger, "flutter_tappay_spaceshare")
    channel.setMethodCallHandler(this)
    // TODO: Add tpdirect.aar to android/libs and configure Gradle to include it.
  }

  override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
    when (call.method) {
      "initialize" -> {
        val apiKey = call.argument<String>("apiKey")
        val appId = call.argument<String>("appId")
        if (apiKey != null && appId != null) {
          // TODO: Initialize TapPay SDK via TPDSetup.initInstance(context, appId.toInt(), apiKey, serverType)
          result.success("Initialized")
        } else {
          result.error("INVALID_ARGUMENTS", "API key or App ID missing", null)
        }
      }
      "getTappayPrime" -> {
        val appId = call.argument<String>("appId")
        val appKey = call.argument<String>("appKey")
        val sandbox = call.argument<Boolean>("sandbox") ?: true
        val cardNumber = call.argument<String>("cardNumber")
        val dueMonth = call.argument<String>("dueMonth")
        val dueYear = call.argument<String>("dueYear")
        val ccv = call.argument<String>("ccv")

        if (appId != null && appKey != null && cardNumber != null
            && dueMonth != null && dueYear != null && ccv != null) {
          // TODO: Use TPDForm / TPDCard (and TPDCcvForm if needed) to collect and validate card fields
          // TODO: Call getPrime() on TPDCard or getCCVPrime() on TPDCcv to obtain prime token
          //       e.g. card.getPrime() with callbacks for success/failure
          result.success("dummy_prime") // Stub: return null until implementation is added
        } else {
          result.error("INVALID_ARGUMENTS", "Missing one or more required fields", null)
        }
      }
      else -> result.notImplemented()
    }
  }

  override fun onDetachedFromEngine(@NonNull binding: FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }
}
