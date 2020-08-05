import 'package:flutter/material.dart';

import 'package:baloo/ui/layouts/base_container.dart';
import 'package:baloo/ui/components/Headers/floating.dart';

class FullScrollLayout extends StatefulWidget {
  final String header;
  final Widget child;
  final Widget bottomNavigationSection;

  const FullScrollLayout ({
    Key key,
    this.header,
    this.child,
    this.bottomNavigationSection,
  }): super(key: key);

  @override
  _FullScrollLayoutState createState() => _FullScrollLayoutState();
}


class _FullScrollLayoutState extends State<FullScrollLayout> {
  bool _isScrolling = false;


  _setScrolling(bool val) {
    setState(() { _isScrolling = val; });
  }


  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      child: NotificationListener<ScrollNotification>(
        onNotification: (scrollNotification) {
          if(scrollNotification is ScrollStartNotification) {
            _setScrolling(true);
          } else if (scrollNotification is ScrollEndNotification) {
            _setScrolling(false);
          }
        },
        child: CustomScrollView(
          slivers: [
            FloatingHeader(title: widget.header),
            widget.child,
            widget.bottomNavigationSection(isScrolling: _isScrolling),
          ],
        ),
      ),
    );
  }
}
