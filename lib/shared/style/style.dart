import 'package:questsme_ui/shared/style/color.dart';
import 'package:questsme_ui/shared/style/text.dart';

/// App Style instance
AppStyle $style = AppStyle();

class AppStyle {
  AppStyle({
    this.colors = const AppColor(),
  });

  final AppColor colors;
  final AppTextStyle texts = const AppTextStyle();
}
