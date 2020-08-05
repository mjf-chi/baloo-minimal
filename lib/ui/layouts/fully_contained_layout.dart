// all elements should fit within the width and height of the screen
// and the page will not scroll
import 'package:flutter/material.dart';

import 'package:baloo/ui/layouts/base_container.dart';
import 'package:baloo/ui/theme/text_styles.dart';


class FullyContainedLayout extends StatelessWidget {
  final String _header;
  final Widget _body;
  final Widget _bottomSection;


  FullyContainedLayout({
    String header,
    Widget child,
    Widget bottomSection,
  })
    : _header = header,
      _body = body,
      _bottomSection = bottomSection;


  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SectionHeader(text: _header),
          _body,
          _bottomSection,
        ],
      )
    );
  }
}
