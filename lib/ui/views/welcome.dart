// initial screen to show while account information is loading
import 'package:flutter/material.dart';

import 'package:baloo/ui/layouts/centered_layout.dart';
import 'package:baloo/ui/theme/text_styles.dart';
import 'package:baloo/ui/components/Animated/temp_logo.dart';


class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CenteredLayout(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TempLogo(),
          Container(
            margin: const EdgeInsets.only(top: 0.0),
            child: Logo(text: 'baloo'),
          ),
        ],
      ),
    );
  }
}
