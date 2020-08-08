// shows the month

import 'package:flutter/material.dart';


class GlobalTargetComplete extends StatefulWidget {

  _GlobalTargetCompleteState createState() => _GlobalTargetCompleteState();
}

class _GlobalTargetCompleteState extends State<GlobalTargetComplete> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.fromLTRB(0.0, 36.0, 0.0, 48.0),
          child: SectionHeader(text: 'Global target'),
        ),
      ],
    );
  }
}
