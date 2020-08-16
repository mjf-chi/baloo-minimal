import 'package:flutter/material.dart';
import 'package:dashbook/dashbook.dart';

import 'package:baloo/storybook/color_row.dart';

import 'package:baloo/ui/theme/text_styles.dart';
import 'package:baloo/ui/theme/colors.dart';

import 'package:baloo/ui/layouts/base_container.dart';

import 'package:baloo/ui/components/DataRepresentations/value_target.dart';
import 'package:baloo/ui/components/DataRepresentations/material_impact_progress.dart';
import 'package:baloo/ui/components/Animated/progress_bar.dart';

// Global Target Section
import 'package:baloo/storybook/mock_data.dart';
import 'package:baloo/ui/sections/globaltarget/labeled_target.dart';
import 'package:baloo/ui/sections/globaltarget/complete.dart';

void main() {
  final dashbook = Dashbook();

  dashbook
    .storiesOf('Theme')
    .add('Fonts', (ctx) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Logo(text: 'Logo'),
          SectionHeader(text: 'Section Header'),
          Assistant(text: 'Assistant'),
          MediumValue(text: 'Medium Value'),
          SmallLabel(text: 'Small Label'),
          MediumLabel(text: 'Medium Label'),
          ActiveOption(text: 'Active Option'),
          InactiveOption(text: 'Inactive Option'),
          BodyCopy(text: 'Body'),
          LinkText(text: 'Link'),
          Container(
            width: 120,
            height: 24,
            decoration: BoxDecoration(
              color: Color(0xFF000000),
            ),
            child: ButtonText(text: 'Button Text'),
          ),
          InputLabel(text: 'Input label'),
          InputPlaceholder(text: 'Input Placeholder'),
          InputValue(text: 'Input Value'),
        ],
      );
    })
    .add('Colors', (ctx) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ColorRow(color: BrandColors.black, name: 'Black'),
          ColorRow(color: BrandColors.darkGrey, name: 'Dark Grey'),
          ColorRow(color: BrandColors.lightGrey, name: 'Light Grey'),
          ColorRow(color: BrandColors.white, name: 'White'),
          ColorRow(color: BrandColors.lightOffWhite, name: 'Light Off White'),
          ColorRow(color: BrandColors.darkOffWhite, name: 'Dark Off White'),
        ],
      );
    });

  dashbook
    .storiesOf('Animated')
    .add('Value Target Pair', (ctx) {
       return ValueTarget(value: 15392.3, target: 20000.0);
     })
    .add('Progress Bar 1%', (ctx) {
       return ProgressBar(value: 1, target: 100);
     })
     .add('Progress Bar 50%', (ctx) {
       return ProgressBar(value: 50, target: 100);
     })
     .add('Progress Bar 100%', (ctx) {
       return ProgressBar(value: 100, target: 100);
     })
     .add('Material Impact Progress', (ctx) {
       return MaterialImpactProgress(
         material: 'water',
         value: 15392.3,
         target: 20000.0,
       );
     });

  dashbook
    .storiesOf('Global Target Section')
    .add('Complete', (ctx) {
      List<Map<String, Map<String, double>>> data = globalTargetMockData();
      return GlobalTargetComplete(data: data);
    })
    .add('Labeled Target', (ctx) {
      return LabeledTarget(
        primaryLabel: 'Water',
        secondaryLabel: '( liters )',
        value: 15392.3,
        target: 20000.0,
      );
    });

  runApp(dashbook);
}
