import 'package:flutter/material.dart';

import 'package:baloo/ui/layouts/base_container.dart';

class CenteredLayout extends StatelessWidget {
  final Widget _child;

  CenteredLayout({ Widget child }) : _child = child;

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      child: Center(
        child: _child,
      ),
    );
  }
}
