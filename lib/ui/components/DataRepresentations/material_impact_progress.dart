import 'package:flutter/material.dart';

import 'package:baloo/ui/theme/text_styles.dart';
import 'package:baloo/ui/components/Animated/progress_bar.dart';

import 'package:baloo/ui/formatters/add_commas.dart';

class MaterialImpactProgress extends StatelessWidget {
  String _material;
  double _value;
  double _target;

  MaterialImpactProgress({
    String material,
    double value,
    double target,
  })
    : _material = material,
      _value = value,
      _target = target;

  @override
  Widget build(BuildContext context) {
    String _percent = '${addCommas((_value/_target) * 100)}%';

    return Column(
      children: <Widget>[
        Container(
          margin: new EdgeInsets.only(bottom: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SmallLabel(text: _material),
              SmallLabel(text: _percent),
            ],
          ),
        ),
        ProgressBar(value: _value, target: _target),
      ],
    );
  }
}
