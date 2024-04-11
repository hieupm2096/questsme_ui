import 'package:flutter/material.dart';
import 'package:questsme_ui/gen/assets.gen.dart';
import 'package:questsme_ui/shared/widget/button/app_bar_button.dart';

class SustainabilityButton extends StatelessWidget {
  const SustainabilityButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBarButton(
      icon: Assets.icons.icHeartOutline.svg(width: 16, height: 16),
      onTap: () {},
    );
  }
}
