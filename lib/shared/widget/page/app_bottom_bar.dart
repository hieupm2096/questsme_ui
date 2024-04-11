import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:questsme_ui/gen/assets.gen.dart';
import 'package:questsme_ui/shared/style/style.dart';

enum BottomBarTab { home, brand, myGame, mission, profile }

class AppBottomBar extends StatelessWidget {
  const AppBottomBar({
    required this.onTap,
    super.key,
    this.activeTab = BottomBarTab.home,
  });

  final void Function(BottomBarTab activeTab) onTap;
  final BottomBarTab activeTab;

  @override
  Widget build(BuildContext context) {
    final bottomBarHeight = 61 + MediaQuery.of(context).viewPadding.bottom;

    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Container(
          height: bottomBarHeight,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: $style.colors.navigationBar.withOpacity(0.2),
            border: Border(
              top: BorderSide(color: $style.colors.separator),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: _BottomBarItemWidget(
                  label: 'Home',
                  icon: Assets.icons.icNavHome.svg(
                    colorFilter: ColorFilter.mode(
                      $style.colors.buttonOnNavigationBar,
                      BlendMode.srcIn,
                    ),
                  ),
                  activeIcon: Assets.icons.icNavHome.svg(
                    colorFilter: ColorFilter.mode(
                      $style.colors.buttonOnNavigationBarActive,
                      BlendMode.srcIn,
                    ),
                  ),
                  isActive: activeTab == BottomBarTab.home,
                  onTap: () => onTap(BottomBarTab.home),
                ),
              ),
              Expanded(
                child: _BottomBarItemWidget(
                  label: 'Search',
                  icon: Assets.icons.icNavSearch.svg(
                    colorFilter: ColorFilter.mode(
                      $style.colors.buttonOnNavigationBar,
                      BlendMode.srcIn,
                    ),
                  ),
                  activeIcon: Assets.icons.icNavSearch.svg(
                    colorFilter: ColorFilter.mode(
                      $style.colors.buttonOnNavigationBarActive,
                      BlendMode.srcIn,
                    ),
                  ),
                  isActive: activeTab == BottomBarTab.brand,
                  onTap: () => onTap(BottomBarTab.brand),
                ),
              ),
              Expanded(
                child: _BottomBarItemWidget(
                  label: 'Game',
                  icon: Assets.icons.icNavMyGame.svg(
                    colorFilter: ColorFilter.mode(
                      $style.colors.buttonOnNavigationBar,
                      BlendMode.srcIn,
                    ),
                  ),
                  activeIcon: Assets.icons.icNavMyGameActive.svg(),
                  isActive: activeTab == BottomBarTab.myGame,
                  onTap: () => onTap(BottomBarTab.myGame),
                ),
              ),
              Expanded(
                child: _BottomBarItemWidget(
                  label: 'Chart',
                  icon: Assets.icons.icNavQuest.svg(
                    colorFilter: ColorFilter.mode(
                      $style.colors.buttonOnNavigationBar,
                      BlendMode.srcIn,
                    ),
                  ),
                  activeIcon: Assets.icons.icNavQuest.svg(
                    colorFilter: ColorFilter.mode(
                      $style.colors.buttonOnNavigationBarActive,
                      BlendMode.srcIn,
                    ),
                  ),
                  isActive: activeTab == BottomBarTab.mission,
                  onTap: () => onTap(BottomBarTab.mission),
                ),
              ),
              Expanded(
                child: _BottomBarItemWidget(
                  label: 'Profile',
                  icon: Assets.icons.icNavProfile.svg(
                    colorFilter: ColorFilter.mode(
                      $style.colors.buttonOnNavigationBar,
                      BlendMode.srcIn,
                    ),
                  ),
                  activeIcon: Assets.icons.icNavProfile.svg(
                    colorFilter: ColorFilter.mode(
                      $style.colors.buttonOnNavigationBarActive,
                      BlendMode.srcIn,
                    ),
                  ),
                  isActive: activeTab == BottomBarTab.profile,
                  onTap: () => onTap(BottomBarTab.profile),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BottomBarItemWidget extends StatelessWidget {
  const _BottomBarItemWidget({
    required this.label,
    required this.icon,
    required this.activeIcon,
    required this.isActive,
    this.onTap,
  });

  final String label;
  final Widget icon;
  final Widget activeIcon;
  final bool isActive;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ColoredBox(
        color: Colors.transparent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 12),
            if (isActive) activeIcon else icon,
            const SizedBox(height: 6),
            Flexible(
              child: Text(
                label,
                style: isActive
                    ? $style.texts.note10.copyWith(
                        color: $style.colors.buttonOnNavigationBarActive,
                        fontWeight: FontWeight.w700,
                      )
                    : $style.texts.note10.copyWith(
                        color: $style.colors.buttonOnNavigationBar,
                        fontWeight: FontWeight.w500,
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
