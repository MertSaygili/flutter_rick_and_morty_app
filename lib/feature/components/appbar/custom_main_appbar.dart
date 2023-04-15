import 'package:flutter/material.dart';
import 'package:flutter_rick_and_morty_app/core/constants/colors.dart';
import 'package:flutter_rick_and_morty_app/core/constants/constants.dart';
import 'package:flutter_rick_and_morty_app/feature/utils/attributes/asset_address.dart';
import 'package:flutter_rick_and_morty_app/feature/utils/attributes/attributes.dart';
import 'package:flutter_rick_and_morty_app/feature/utils/attributes/sizes.dart';

class CustomMainAppbar extends StatefulWidget with PreferredSizeWidget {
  const CustomMainAppbar({super.key, this.returnBack});

  final bool? returnBack;

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
      leading: widget.returnBack == null ? Image.asset(AssetAddress().appbarLogo, fit: BoxFit.cover) : null,
      automaticallyImplyLeading: widget.returnBack ?? false,
      leadingWidth: Sizes().appbarLeadingWidth,
      backgroundColor: CustomColors.primary,
      elevation: Attributes().mediumElevation,
    );
  }
}
