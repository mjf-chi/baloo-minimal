// one day it would be great to be able to make this
// an animated svg
import 'package:flutter/material.dart';

import 'package:baloo/ui/theme/colors.dart';

class TempLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 160,
      child: Stack(
        children: <Widget>[
          Center(
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: BrandColors.black,
                borderRadius: BorderRadius.circular(40.0),
              ),
            ),
          ),
          Positioned(
            top: 16.0,
            right: 20.0,
            child: Container(
              width: 16.0,
              height: 16.0,
              decoration: BoxDecoration(
                color: BrandColors.lightGrey,
                borderRadius: BorderRadius.circular(40.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
