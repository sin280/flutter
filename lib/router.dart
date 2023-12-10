import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_f/View/FirstView.dart';

import 'main.dart';

final goRouter = GoRouter(
  // アプリが起動した時
  initialLocation: '/',
  // パスと画面の組み合わせ
  routes: [
    GoRoute(
      path: '/',
      name: 'initial',
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: const MyHomePage(title: 'Init',),
        );
      },
    ),
    // ex) アカウント画面
    GoRoute(
      path: '/first',
      name: 'first',
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: FirstView(onTap: () {
            print('ルーターonTap');
          },),
        );
      },
    ),
  ],
  // 遷移ページがないなどのエラーが発生した時に、このページに行く
  errorPageBuilder: (context, state) => MaterialPage(
    key: state.pageKey,
    child: Scaffold(
      body: Center(
        child: Text(state.error.toString()),
      ),
    ),
  ),
);