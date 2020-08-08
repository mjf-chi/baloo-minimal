// the main logged out view
//   should render the global target progress
//   should render the most recent actions
//   should allow the user to log in or sign up
import 'package:flutter/material.dart';

import 'package:baloo/ui/layouts/full_scroll_layout.dart';
import 'package:baloo/ui/theme/text_styles.dart';
import 'package:baloo/ui/views/globaltarget/complete.dart';


class LoggedOutMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FullScrollLayout(
      child: Column(
        children: <Widget>[
          GlobalTargetComplete(),
        ],
      ),
    )
  }
}
