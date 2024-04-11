import 'package:flutter/material.dart';
import 'package:questsme_ui/gen/assets.gen.dart';
import 'package:questsme_ui/shared/shared.dart';

class FullPageScaffold extends StatelessWidget {
  const FullPageScaffold({
    required this.pageTitle,
    required this.body,
    super.key,
    this.extendedActions,
  });

  final String pageTitle;
  final List<Widget>? extendedActions;

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Title(
      color: $style.colors.textPrimary,
      title: pageTitle,
      child: GestureDetector(
        onTap: FocusScope.of(context).unfocus,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            FullAppBar(
              largeTitle: pageTitle,
              extendedActions: extendedActions,
            ),
          ],
          body: body,
        ),
      ),
    );
  }
}

class FullAppBar extends SliverAppBar {
  const FullAppBar({
    required this.largeTitle,
    this.extendedActions,
    super.key,
  });

  @override
  bool get automaticallyImplyLeading => false;

  final String largeTitle;

  final List<Widget>? extendedActions;

  @override
  bool get pinned => true;

  @override
  Color? get backgroundColor => $style.colors.appBarBackground;

  @override
  Color? get surfaceTintColor => $style.colors.appBarBackground;

  @override
  double? get elevation => 0;

  @override
  double? get expandedHeight => 100;

  @override
  double? get collapsedHeight => 60;

  @override
  Widget? get flexibleSpace => SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 8),
                Row(
                  children: [
                    Assets.images.logoWhite.svg(),
                    const Spacer(),
                    const SustainabilityButton(),
                    const SizedBox(width: 10),
                    const WalletButton(),
                    const SizedBox(width: 10),
                    const PointButton(),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      largeTitle,
                      style: $style.texts.title28.copyWith(
                        color: $style.colors.textPrimary,
                      ),
                    ),
                    if (extendedActions != null) const Spacer(),
                    if (extendedActions != null) ...extendedActions!,
                  ],
                ),
                const SizedBox(height: 12),
              ],
            ),
          ),
        ),
      );
}
