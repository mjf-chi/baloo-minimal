import 'package:flutter/material.dart';

import 'package:baloo/ui/theme/colors.dart';
import 'package:baloo/ui/theme/fonts.dart';


// STYLE NAMES
//   Logo
//   SectionHeader
//   MediumLabel
//   Assistant
//   MediumValue
//   SmallLabel
//   ActiveOption
//   InactiveOption
//   Assistant
//   BodyCopy
//   LinkText
//   ButtonText
//   InputLabel
//   InputPlaceholder
//   InputValue


class BaseTextStyle extends StatelessWidget {
  final String _text;


  BaseTextStyle({ String text }) : _text = text;


  String get text => _text;


  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      TextStyle(
        color: BrandColors.darkGrey,
        fontSize: 16,
        fontFamily: Fonts.primary.family,
        fontWeight: Fonts.primary.weight,
    ));
  }
}


class Logo extends BaseTextStyle {
  Logo({ String text }) : super(text: text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      TextStyle(
        color: BrandColors.lightGrey,
        fontSize: 24,
        fontFamily: Fonts.primary.family,
        fontWeight: Fonts.primary.weight,
    ));
  }
}

class SectionHeader extends BaseTextStyle {
  SectionHeader({ String text }) : super(text: text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      TextStyle(
        color: BrandColors.darkGrey,
        fontSize: 16,
        fontFamily: Fonts.primary.family,
        fontWeight: Fonts.primary.weight,
    ));
  }
}

class MediumLabel extends BaseTextStyle {
  MediumLabel({ String text }) : super(text: text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      TextStyle(
        color: BrandColors.darkGrey,
        fontSize: 14,
        fontFamily: Fonts.primary.family,
        fontWeight: Fonts.primary.weight,
    ));
  }
}

class Assistant extends BaseTextStyle {
  Assistant({ String text }) : super(text: text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      TextStyle(
        color: BrandColors.lightGrey,
        fontSize: 12,
        fontFamily: Fonts.primary.family,
        fontWeight: Fonts.primary.weight,
    ));
  }
}

class MediumValue extends BaseTextStyle {
  MediumValue({ String text }) : super(text: text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      TextStyle(
        color: BrandColors.black,
        fontSize: 22,
        fontFamily: Fonts.primary.family,
        fontWeight: Fonts.primary.weight,
      ),
    );
  }
}

class SmallLabel extends BaseTextStyle {
  SmallLabel({ String text }) : super(text: text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      TextStyle(
        color: BrandColors.darkGrey,
        fontSize: 12,
        fontFamily: Fonts.primary.family,
        fontWeight: Fonts.primary.weight,
      ),
    );
  }
}

class ActiveOption extends BaseTextStyle {
  ActiveOption({ String text }) : super(text: text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      TextStyle(
        color: BrandColors.darkGrey,
        fontSize: 22,
        fontFamily: Fonts.primary.family,
        fontWeight: Fonts.primary.weight,
      ),
    );
  }
}

class InactiveOption extends BaseTextStyle {
  InactiveOption({ String text }) : super(text: text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      TextStyle(
        color: BrandColors.lightGrey,
        fontSize: 16,
        fontFamily: Fonts.primary.family,
        fontWeight: Fonts.primary.weight,
      ),
    );
  }
}

class BodyCopy extends BaseTextStyle {
  BodyCopy({ String text }) : super(text: text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      TextStyle(
        color: BrandColors.darkGrey,
        fontSize: 14,
        fontFamily: Fonts.primary.family,
        fontWeight: Fonts.primary.weight,
      ),
    );
  }
}

class LinkText extends BaseTextStyle {
  LinkText({ String text }) : super(text: text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      TextStyle(
        color: BrandColors.black,
        fontSize: 16,
        fontFamily: Fonts.link.family,
        fontWeight: Fonts.link.weight,
      ),
    );
  }
}

class ButtonText extends BaseTextStyle {
  ButtonText({ String text }) : super(text: text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      TextStyle(
        color: BrandColors.white,
        fontSize: 16,
        fontFamily: Fonts.link.family,
        fontWeight: Fonts.link.weight,
      ),
    );
  }
}

class InputLabel extends BaseTextStyle {
  InputLabel({ String text }) : super(text: text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      TextStyle(
        color: BrandColors.black,
        fontSize: 14,
        fontFamily: Fonts.link.family,
        fontWeight: Fonts.link.weight,
      ),
    );
  }
};

class InputPlaceholder extends BaseTextStyle {
  InputLabel({ String text }) : super(text: text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      TextStyle(
        color: BrandColors.lightGrey,
        fontSize: 24,
        fontFamily: Fonts.primary.family,
        fontWeight: Fonts.primary.weight,
      ),
    );
  }
};

class InputValue extends BaseTextStyle {
  InputValue({ String text }) : super(text: text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      TextStyle(
        color: BrandColors.black,
        fontSize: 24,
        fontFamily: Fonts.primary.family,
        fontWeight: Fonts.primary.weight,
      ),
    );
  }
};
