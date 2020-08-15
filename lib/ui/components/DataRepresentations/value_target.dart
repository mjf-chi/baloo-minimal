import 'package:flutter/material.dart';

import 'package:baloo/ui/formatters/add_commas.dart';
import 'package:baloo/ui/theme/text_styles.dart';

class ValueTarget extends StatelessWidget {
  double _value;
  double _target;

  ValueTarget({
    double value,
    double target,
  })
    : _value = value,
      _target = target;

  @override
  Widget build(BuildContext context) {
    String combinedValueTarget =
      '${addCommas(_value)} / ${addCommas(_target)}';

    return Container(
      child: InputValue(text: combinedValueTarget),
    );
  }
}
