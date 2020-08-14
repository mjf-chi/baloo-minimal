import 'package:flutter/material.dart';

import 'package:baloo/ui/theme/colors.dart';


class ProgressBar extends StatelessWidget {
  double _value;
  double _target;

  ProgressBar({
    double value,
    double target,
  })
    : _value = value,
      _target = target;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 1,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          SizedBox(
            height: 1,
            child: Container(
              decoration: BoxDecoration(
                color: BrandColors.darkGrey,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            height: 1,
            child: FractionallySizedBox(
              widthFactor: (_value/_target),
              child: Container(
                decoration: BoxDecoration(
                  color: BrandColors.lightOffWhite,
                  boxShadow: [
                    new BoxShadow(
                      color: BrandColors.darkGrey.withAlpha(191),
                      offset: const Offset(0.0, 2.0),
                      spreadRadius: 0.0,
                      blurRadius: 4.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
