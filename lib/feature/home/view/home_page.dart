import 'package:flutter/material.dart';
import 'package:questsme_ui/shared/shared.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static String route = '/';

  @override
  Widget build(BuildContext context) {
    return const FullPageScaffold(
      pageTitle: 'Home',
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
      ),
    );
  }
}
