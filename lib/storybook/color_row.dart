import 'package:flutter/material.dart';

import 'package:baloo/ui/theme/text_styles.dart';

class ColorRow extends StatelessWidget {
  final Color _color;
  final String _name;

  ColorRow({ Color color, String name })
    : _name = name,
      _color = color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 20,
          height: 20,
          margin: const EdgeInsets.fromLTRB(20.0, 4.0, 12.0, 4.0),
          decoration: BoxDecoration(
            color: _color,
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        Expanded(
          child: SmallLabel(text: _name),
        ),
      ]
    );
  }
}
