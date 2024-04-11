import 'package:flutter/material.dart';
import 'package:questsme_ui/gen/assets.gen.dart';
import 'package:questsme_ui/shared/widget/button/app_bar_button.dart';

class WalletButton extends StatelessWidget {
  const WalletButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBarButton(
      icon: Assets.icons.icWallet.svg(),
      onTap: () {},
    );
  }
}
