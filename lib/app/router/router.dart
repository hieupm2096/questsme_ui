import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:questsme_ui/feature/chart/chart.dart';
import 'package:questsme_ui/feature/game/game.dart';
import 'package:questsme_ui/feature/home/home.dart';
import 'package:questsme_ui/feature/home_menu/home_menu.dart';
import 'package:questsme_ui/feature/profile/profile.dart';
import 'package:questsme_ui/feature/search/search.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

@Riverpod(keepAlive: true)
Raw<GoRouter> goRouter(GoRouterRef ref) {
  final rootNavigatorKey = GlobalKey<NavigatorState>();

  return GoRouter(
    navigatorKey: rootNavigatorKey,
    routes: [
      StatefulShellRoute.indexedStack(
        pageBuilder: (context, state, navigationShell) {
          return MaterialPage(
            child: HeroControllerScope(
              controller: MaterialApp.createMaterialHeroController(),
              child: HomeMenuPage(
                navigationShell: navigationShell,
              ),
            ),
          );
        },
        branches: [
          // HOME
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: HomePage.route,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: HomePage(),
                ),
              ),
            ],
          ),

          // SEARCH
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: SearchPage.route,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: SearchPage(),
                ),
              ),
            ],
          ),

          // GAME
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: GamePage.route,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: GamePage(),
                ),
              ),
            ],
          ),

          // CHART
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: ChartPage.route,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: ChartPage(),
                ),
              ),
            ],
          ),

          // PROFILE
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: ProfilePage.route,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: ProfilePage(),
                ),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
