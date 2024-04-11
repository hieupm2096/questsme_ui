import 'package:flutter/cupertino.dart';
import 'package:questsme_ui/shared/style/style.dart';

class AppBarButton extends StatelessWidget {
  const AppBarButton({
    required this.icon,
    super.key,
    this.onTap,
  });

  final Widget icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 8),
      color: $style.colors.buttonAppBarPrimary,
      minSize: 0,
      borderRadius: BorderRadius.circular(18),
      onPressed: () {
        FocusScope.of(context).unfocus();
        onTap?.call();
      },
      child: icon,
    );
  }
}
