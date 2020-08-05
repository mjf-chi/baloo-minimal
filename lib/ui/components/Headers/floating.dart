// should return a header that listen for scroll notifications
//   on scroll the header should move up or reduce it's height to 0
import 'package:flutter/material.dart';

import 'package:baloo/ui/theme/text_styles.dart';

class FloatingHeader extends StatelessWidget {
  String _title;

  FloatingHeader(String title) : _title = title;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      floating: true,
      collapsedHeight: 0.0,
      expandedHeight: 100.0,
      title: SectionHeader(text: title),
    );
  }
}
