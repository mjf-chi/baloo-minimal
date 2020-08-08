import 'package:flutter/material.dart';


class Font {
  final String _family;
  final FontWeight _weight;

  Font({ String family, FontWeight weight })
    : _family = family,
      _weight = weight;

  String get family => _family;
  FontWeight get weight => _weight;
}

class Fonts {
  static Font primary = Font(family: 'Muli', weight: FontWeight.w400);
  static Font link = Font(family: 'Muli', weight: FontWeight.w600);
}
