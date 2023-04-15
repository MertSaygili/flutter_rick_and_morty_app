import 'package:flutter/material.dart';
import 'package:flutter_rick_and_morty_app/feature/utils/attributes/attributes.dart';

class CustomPaddings {
  final EdgeInsets paddingNormal = EdgeInsets.all(Attributes().mediumInsidePadding);
  final EdgeInsets marginLarge = EdgeInsets.symmetric(vertical: Attributes().largeOutsidePadding, horizontal: Attributes().mediumOutsidePadding);
}
