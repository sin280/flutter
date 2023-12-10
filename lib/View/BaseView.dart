import 'package:flutter/material.dart';
import 'package:test_f/Util/LogUtil.dart';

base class BaseView extends StatelessWidget {
  BaseView({
    super.key
  });
  Function(String)? baseFunc;

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  void printLog() {
    LogUtil.shared.outputLog('printLog');
  }
}