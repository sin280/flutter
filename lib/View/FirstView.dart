import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_f/BaseModel.dart';
import 'package:test_f/Util/LogUtil.dart';

import 'BaseView.dart';

base class FirstView extends BaseView {
  final VoidCallback onTap;
  FirstView({
    required this.onTap,
    baseFunc,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BaseModel.shared.provider.setListener(changeCallback);
    BaseModel.shared.provider.setListener(changeCallback);
    BaseModel.shared.provider.setListener(changeCallback);
    BaseModel.shared.provider.setListener(changeCallback);
    BaseModel.shared.provider.setListener(changeCallback);
    return Scaffold(
        appBar: AppBar(
            title : const Text(
                "FirstView",
              style: TextStyle(fontSize: 15),
            ),
          backgroundColor: Colors.blueAccent,
        ),
        body :
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: TextButton(
                child: const Text("[セット]"),
                onPressed: () async {
                  final SharedPreferences prefs = await SharedPreferences.getInstance();
                  await BaseModel.shared.setState(DebugState.three);
                  // final state = await BaseModel.shared.getState();
                  // LogUtil.shared.outputLog('[s-kitayama] state: $state');
                },
              ),
            ),
            Center(
              child: TextButton(
                child: const Text("[実行]"),
                onPressed: () {
                  BaseModel.shared.log();
                },
              ),
            ),
          ],
        )
    );
  }

  Future<void> changeCallback() async {
    LogUtil.shared.outputLog('[s-kitayama] changeCallback');
    final state = await BaseModel.shared.getState();
    LogUtil.shared.outputLog('[s-kitayama] state: $state');
    final state2 = BaseModel.shared.getState();
    LogUtil.shared.outputLog('[s-kitayama] state2: $state2');
  }

  void stringSubaru(String string) {
    LogUtil.shared.outputLog('[s-kitayama] stringSubaru: $string');
  }
}