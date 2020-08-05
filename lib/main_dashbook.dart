import 'package:flutter/material.dart';
import 'package:dashbook/dashbook.dart';

import 'package:baloo/ui/theme/text_styles.dart';

void main() {
  final dashbook = Dashbook();

  dashbook
    .storiesOf('Text Styles')
    .add('Logo', (ctx) {
      return Logo(text: 'Logo'),
    })
    .add('Section Header', (ctx) {
      return SectionHeader(text: 'Header'),
    })
    .add('MediumLabel', (ctx) {
      return MediumLabel(text: 'MediumLabel'),
    });

  runApp(dashbook);
}
