import 'package:flutter/material.dart';

import 'package:baloo/ui/theme/text_styles.dart';

import 'package:baloo/ui/components/DataRepresentations/value_target.dart';

class LabeledTarget extends StatelessWidget {
  String _primaryLabel;
  String _secondaryLabel = '';
  double _value;
  double _target;


  LabeledTarget({
    String primaryLabel,
    String secondaryLabel,
    double value,
    double target,
  })
    : _primaryLabel = primaryLabel,
      _secondaryLabel = secondaryLabel,
      _value = value,
      _target = target;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: new EdgeInsets.only(bottom: 4.0),
          child: Row(
            children: <Widget>[
              Container(
                margin: new EdgeInsets.only(right: 8.0),
                child: MediumLabel(text: _primaryLabel),
              ),
              Container(
                child: Assistant(text: _secondaryLabel),
              ),
            ],
          ),
        ),
        ValueTarget(value: _value, target: _target),
      ],
    );
  }
}
