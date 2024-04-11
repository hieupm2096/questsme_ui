import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:questsme_ui/app/router/router.dart';
import 'package:questsme_ui/l10n/l10n.dart';
import 'package:questsme_ui/shared/style/style.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.read(goRouterProvider);

    return MaterialApp.router(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        physics: const BouncingScrollPhysics(),
      ),
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: $style.colors.solidPurple),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: $style.colors.solidPurple,
        ),
        canvasColor: Colors.transparent,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: router,
    );
  }
}
