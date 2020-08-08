import 'package:flutter/material.dart';

import 'package:baloo/ui/theme/colors.dart';

class BaseContainer extends StatelessWidget {
  final Widget _child;

  BaseContainer({ Widget child }) : _child = child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 1.0],
            colors: [BrandColors.lightOffWhite, BrandColors.darkOffWhite],
          ),
        ),
        child: SafeArea(child: _child),
      ),
    );
  }
}
