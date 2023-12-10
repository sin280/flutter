import 'package:flutter/services.dart';
import 'package:logger/logger.dart';

class LogUtil {
  static final LogUtil shared = LogUtil._();
  LogUtil._() {
    print('[s-kitayama] create');
  }

  static Logger logger = Logger(printer: PrettyPrinter(
      methodCount: 0,
      errorMethodCount: 8,
      lineLength: 120,
      colors: true,
      printEmojis: true,
      printTime: false
  ),);
  static const MethodChannel channel = const MethodChannel('com.example.methodchannel/interop');

  Future<void> start() async {
    print('[s-kitayama] start');
    channel.setMethodCallHandler(_platformCallHandler);
  }

  Future<dynamic> _platformCallHandler(MethodCall call) async {
    switch (call.method) {
      case 'outputLog':
        outputLog(call.arguments);
      default:
        throw MissingPluginException();
    }
  }

  Future<void> outputLog(String message) async {
    logger.d(message);
  }
}