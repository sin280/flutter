import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_f/Request/sample_request.dart';
import 'package:test_f/Util/LogUtil.dart';
import 'package:flutter/services.dart';
import 'package:test_f/Util/api_gateway.dart';
import 'package:test_f/View/FirstView.dart';
import 'package:test_f/router.dart';

import 'Response/sample_response.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LogUtil.shared.start();
    return MaterialApp.router(
      routerDelegate: goRouter.routerDelegate,
      routeInformationParser: goRouter.routeInformationParser,
      routeInformationProvider: goRouter.routeInformationProvider,

      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blueAccent,
        title: Text(widget.title),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            ElevatedButton(
                child: const Text('FirstPageへ'),
                onPressed: () {
                  context.push('/first');
                }),
            ElevatedButton(
                child: const Text('sendRequest'),
                onPressed: () async {
                  final msg = {"body":"ぼでー", "header": "ヘッダー", "age":20};
                  final request = SampleRequest(json: msg);
                  final response = SampleResponse.getInstance();
                  final result = await ApiGateway.shared.sendRequest<SampleResponse>(request, response);
                  LogUtil.shared.outputLog('result: $result');
                  // LogUtil.shared.outputLog('header: ${result.header}');
                  // LogUtil.shared.outputLog('body: ${result.body}');
                }),
          ]),
        ],
      ),
    );
  }

  void onTap() {
    print('[s-kitayama] onTap');
  }
}
