import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:questsme_ui/feature/home_menu/home_menu.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

@Riverpod(keepAlive: true)
Raw<GoRouter> goRouter(GoRouterRef ref) {
  final rootNavigatorKey = GlobalKey<NavigatorState>();

  return GoRouter(
    navigatorKey: rootNavigatorKey,
    routes: [
      GoRoute(
        path: HomeMenuPage.route,
        builder: (context, state) => const HomeMenuPage(),
      ),
    ],
  );
}
