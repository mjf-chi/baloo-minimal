// shows the month, year, lifetime selection
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

import 'package:baloo/ui/sections/globaltarget/labeled_target.dart';

import 'package:baloo/ui/components/DataRepresentations/material_impact_progress.dart';
import 'package:baloo/ui/components/Inputs/options.dart';

import 'package:baloo/ui/theme/text_styles.dart';

class GlobalTargetComplete extends StatefulWidget {
  List<Map<String, Map<String, double>>> data;
  // data coming in should look like
  //   [{
  //     water: {
  //       value: 1394.4,
  //       target: 10000.0,
  //     },
  //     carbon: {
  //       value: 34.1,
  //       target: 50.0,
  //     },
  //   }, {
  //     water: {
  //       value: 15000.4,
  //       target: 200000.0,
  //     },
  //     carbon: {
  //       value: 34.1,
  //       target: 50.0,
  //     },
  //   }, {
  //     water: {
  //       value: 15000.4,
  //       target: 200000.0,
  //     },
  //     carbon: {
  //       value: 34.1,
  //       target: 50.0,
  //     },
  //   }]

  final List<String> timeRanges = [
    new DateFormat('MMMM').format(new DateTime.now()), // month
    new DateFormat('y').format(new DateTime.now()), // year
    '2035', // lifetime
  ];

  GlobalTargetComplete({
    List<Map<String, Map<String, double>>> data,
  }) : data = data;

  _GlobalTargetCompleteState createState() => _GlobalTargetCompleteState();
}

class _GlobalTargetCompleteState extends State<GlobalTargetComplete> {
  int selectedIdx = 0;

  void selectTargetTime(int idx) {
    if (idx != selectedIdx) {
      selectedIdx = idx;
    }
    setState(() => {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.fromLTRB(0.0, 36.0, 0.0, 48.0),
          child: SectionHeader(text: 'Global target'),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(0.0, 36.0, 0.0, 48.0),
          child: SectionHeader(text: widget.timeRanges[selectedIdx]),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
          child: LabeledTarget(
            primaryLabel: 'Water',
            secondaryLabel: '( liters )',
            value: widget.data[selectedIdx]['water']['value'],
            target: widget.data[selectedIdx]['water']['target'],
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
          child: LabeledTarget(
            primaryLabel: 'Carbon',
            secondaryLabel: '( kilograms)',
            value: widget.data[selectedIdx]['carbon']['value'],
            target: widget.data[selectedIdx]['carbon']['target'],
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
          child: MaterialImpactProgress(
            material: 'water',
            value: widget.data[selectedIdx]['water']['value'],
            target: widget.data[selectedIdx]['water']['target'],
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
          child: MaterialImpactProgress(
            material: 'carbon',
            value: widget.data[selectedIdx]['carbon']['value'],
            target: widget.data[selectedIdx]['carbon']['target'],
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
          child: OptionsInput(
            options: widget.timeRanges,
            onSelect: selectTargetTime,
            selectedIdx: selectedIdx,
          ),
        ),
      ],
    );
  }
}
