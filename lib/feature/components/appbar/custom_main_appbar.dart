import 'package:flutter/material.dart';
import 'package:flutter_rick_and_morty_app/core/constants/colors.dart';
import 'package:flutter_rick_and_morty_app/core/constants/constants.dart';
import 'package:flutter_rick_and_morty_app/feature/utils/asset_address.dart';
import 'package:flutter_rick_and_morty_app/feature/utils/attributes.dart';
import 'package:flutter_rick_and_morty_app/feature/utils/sizes.dart';

class CustomMainAppbar extends StatefulWidget with PreferredSizeWidget {
  const CustomMainAppbar({super.key});

  @override
  State<CustomMainAppbar> createState() => _CustomMainAppbarState();

  @override
  Size get preferredSize => Size.fromHeight(Sizes().appbarHeight);
}

class _CustomMainAppbarState extends State<CustomMainAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(Constants.APP_NAME, style: Theme.of(context).textTheme.headlineMedium),
      centerTitle: true,
      leading: Image.asset(AssetAddress().appbarLogo, fit: BoxFit.cover),
      leadingWidth: Sizes().appbarLeadingWidth,
      backgroundColor: CustomColors.primary,
      elevation: Attributes().mediumElevation,
    );
  }
}
