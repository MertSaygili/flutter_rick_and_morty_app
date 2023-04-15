import 'package:flutter/material.dart';
import 'package:flutter_rick_and_morty_app/feature/utils/attributes/attributes.dart';

class CustomPaddings {
  final EdgeInsets paddingNormal = EdgeInsets.all(Attributes().mediumInsidePadding);
  final EdgeInsets marginLarge = EdgeInsets.symmetric(vertical: Attributes().largeOutsidePadding, horizontal: Attributes().mediumOutsidePadding);
  final EdgeInsets marginNormal = EdgeInsets.symmetric(vertical: Attributes().mediumOutsidePadding, horizontal: Attributes().largeOutsidePadding);
  final EdgeInsets marginSmall = EdgeInsets.symmetric(vertical: Attributes().smallOutsidePadding, horizontal: Attributes().largeOutsidePadding);

  final EdgeInsets marginHorizontalNormal = EdgeInsets.symmetric(horizontal: Attributes().mediumOutsidePadding);
}
