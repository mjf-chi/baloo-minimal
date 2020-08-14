import 'package:flutter/material.dart';

import 'package:baloo/ui/theme/text_styles.dart';


class OptionsInput extends StatelessWidget {
  final List<String> _options;
  final Function _onSelect;
  int _selectedIdx;

  OptionsInput({
    List<String> options,
    Function onSelect,
    int selectedIdx,
  })
    : _options = options,
      _onSelect = onSelect,
      _selectedIdx = selectedIdx;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _options.length,
            itemBuilder: (BuildContext context, int index) =>
              Center(
                child: Item(
                  option: _options[index],
                  isSelected: index == _selectedIdx,
                  onTap: () => _onSelect(index),
                ),
              ),
          ),
        ),
      ]
    );
 }
};


class Item extends StatelessWidget {
  final String _option;
  bool _isSelected;
  final Function _onTap;

  Item({
    String option,
    bool isSelected,
    Function onTap;
  })
    : _option = option,
      _isSelected = isSelected,
      _onTap = onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap(),
      child: _isSelected ? _activeOption() : _inactiveOption,
    ),
  }

  Widget _activeOption() {
    return Container(
      child: ActiveOption(text: _option),
    );
  }

  Widget _inactiveOption() {
    return Container(
      child: InactiveOption(text: _option),
    );
  }
}
