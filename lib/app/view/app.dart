import 'package:flutter/material.dart';
import 'package:questsme_ui/l10n/l10n.dart';
import 'package:questsme_ui/shared/style/style.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      home: Container(),
    );
  }
}
