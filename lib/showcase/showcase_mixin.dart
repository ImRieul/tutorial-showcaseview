import 'package:flutter/material.dart';
import 'package:showcase_example/showcase/showcase_keys.dart';
import 'package:showcaseview/showcaseview.dart';
import 'showcase_helper.dart';

mixin ShowcaseMixin<T extends StatefulWidget> on State<T> {
  Future<void> startShowcase(
    ShowcasePage page,
    List<GlobalKey> showcaseKeys,
  ) async {
    if (!mounted) return;

    final hasShown = await ShowcaseHelper.hasShownShowcase(page);
    if (!hasShown) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ShowCaseWidget.of(context).startShowCase(showcaseKeys);
      });

      await ShowcaseHelper.markShowcaseComplete(page);
    }
  }
}
