import 'package:flutter/material.dart';
import 'package:flutter_rick_and_morty_app/core/constants/colors.dart';
import 'package:flutter_rick_and_morty_app/feature/utils/attributes/sizes.dart';

class CustomIcons {
  final Icon home = Icon(Icons.home, size: Sizes().mediumIconsize);
  final Icon episodes = Icon(Icons.movie, size: Sizes().mediumIconsize);
  final Icon search = Icon(Icons.search, size: Sizes().mediumIconsize);
  final Icon searchHint = Icon(Icons.search, size: Sizes().mediumIconsize, color: CustomColors.onPrimary);
}
