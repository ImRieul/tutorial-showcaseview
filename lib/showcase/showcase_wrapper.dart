import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';
import 'showcase_keys.dart';
import 'showcase_descriptions.dart';

class ShowcaseWrapper extends StatelessWidget {
  final Widget child;
  final HomeShowcase type;

  const ShowcaseWrapper({
    super.key,
    required this.child,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Showcase(
      key: ShowcaseKeys.home[type]!,
      description:
          ShowcaseDescriptions.descriptions[ShowcasePage.home]![type.name]!,
      child: child,
    );
  }
}
