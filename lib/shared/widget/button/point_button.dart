import 'package:flutter/material.dart';
import 'package:questsme_ui/gen/assets.gen.dart';
import 'package:questsme_ui/shared/widget/button/app_bar_button.dart';

class PointButton extends StatelessWidget {
  const PointButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBarButton(
      icon: Assets.icons.icQcoin.svg(),
      onTap: () {},
    );
  }
}
