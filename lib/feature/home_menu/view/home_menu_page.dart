import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:questsme_ui/shared/shared.dart';

class HomeMenuPage extends StatelessWidget {
  const HomeMenuPage({
    required this.navigationShell,
    super.key,
  });

  /// The navigation shell and container for the branch Navigators.
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: $style.colors.background,
      bottomNavigationBar: AppBottomBar(
        onTap: (activeTab) {
          Feedback.forTap(context);
          _onSwitchTab(context: context, activeTab: activeTab);
        },
        activeTab: BottomBarTab.values[navigationShell.currentIndex],
      ),
      body: navigationShell,
    );
  }

  void _onSwitchTab({
    required BuildContext context,
    required BottomBarTab activeTab,
  }) {
    // When navigating to a new branch, it's recommended to use the goBranch
    // method, as doing so makes sure the last navigation state of the
    // Navigator for the branch is restored.
    navigationShell.goBranch(
      activeTab.index,
      // A common pattern when using bottom navigation bars is to support
      // navigating to the initial location when tapping the item that is
      // already active. This example demonstrates how to support this behavior,
      // using the initialLocation parameter of goBranch.
      initialLocation: activeTab.index == navigationShell.currentIndex,
    );
  }
}
