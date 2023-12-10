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
                com.example.test_f.LogUtil.channelLog?.invokeMethod("outputLog", "ネイティブログ:777")
            }
            else
                result.notImplemented()
        }
    }

    fun outputLog(msg: String) {
        Log.d("", "ネイティブログ")
        com.example.test_f.LogUtil.channelLog?.invokeMethod("outputLog", "ネイティブログ:$msg")
    }
}