package com.example.test_f

import android.util.Log
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodCall

object LogUtil {
    private var channelLog: MethodChannel? = null

    fun setup(flutterEngine: FlutterEngine) {
        channelLog = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, "com.example.methodchannel/interop")
        channelLog?.setMethodCallHandler{ methodCall: MethodCall, result: MethodChannel.Result ->
            if (methodCall.method == "push") {
                com.example.test_f.LogUtil.channelLog?.invokeMethod("outputLog", "[s-kitayama] ネイティブログ:777")
                com.example.test_f.LogUtil.channelLog?.invokeMethod("outputLog", "[s-kitayama] ネイティブログ:888")
                com.example.test_f.LogUtil.channelLog?.invokeMethod("outputLog", "[s-kitayama] ネイティブログ:999")
                com.example.test_f.LogUtil.channelLog?.invokeMethod("outputLog", "[s-kitayama] ネイティブログ:000")
                com.example.test_f.LogUtil.channelLog?.invokeMethod("outputLog", "[s-kitayama] ネイティブログ:111")
            }
            else
                result.notImplemented()
        }
    }

    fun outputLog(msg: String) {
        Log.d("", "[s-kitayama] ネイティブログ")
        com.example.test_f.LogUtil.channelLog?.invokeMethod("outputLog", "[s-kitayama] ネイティブログ:$msg")
    }
}