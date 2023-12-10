import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_f/Util/LogUtil.dart';

enum DebugState {
  one,
  two,
  three,
  ;
  static DebugState fromInt(int? i) {
    if (i == null) {
      return DebugState.one;
    }
    switch (i) {
      case 0:
        return DebugState.one;
      case 1:
        return DebugState.two;
      case 2:
        return DebugState.three;
      default:
        return DebugState.one;
    }
  }
}

class StateChangeProvider with ChangeNotifier {
  VoidCallback? _callback;

  Future<DebugState> get state async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return DebugState.fromInt(prefs.getInt('TEST'));
  }

  Future<void> setState(DebugState state) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('TEST', state.index);
    notifyListeners();
  }

  void setListener(VoidCallback listener) {
    if (_callback != null) {
      removeListener(_callback!);
    }
    _callback = listener;
    addListener(_callback!);
  }
}

class BaseModel {
  static final BaseModel shared = BaseModel._();
  StateChangeProvider provider = StateChangeProvider();
  void log() {
    LogUtil.shared.outputLog('[s-kitayama] BaseModel');
  }
  BaseModel._() {
    print('[s-kitayama] BaseModel create');
  }

  Future<void> setState(DebugState state) async {
    await provider.setState(state);
  }

  Future<DebugState> getState() async {
    return provider.state;
  }
}