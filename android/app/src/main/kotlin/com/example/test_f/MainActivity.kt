package com.example.test_f

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity: FlutterActivity() {

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        LogUtil.setup(flutterEngine)
        GeneratedPluginRegistrant.registerWith(flutterEngine)
    }

    override fun onResume() {
        super.onResume()
        LogUtil.outputLog("111")
        LogUtil.outputLog("222")
        LogUtil.outputLog("333")
        LogUtil.outputLog("444")
        LogUtil.outputLog("555")
        LogUtil.outputLog("666")
    }
}
