import 'package:flutter/material.dart';
import 'package:flutter_rick_and_morty_app/feature/components/cached_network_image/cached_network_image.dart';
import 'package:flutter_rick_and_morty_app/feature/utils/attributes/attributes.dart';
import 'package:flutter_rick_and_morty_app/feature/utils/attributes/sizes.dart';

Widget characterImage(BuildContext context, String imageUrl) {
  return Align(
    alignment: Alignment.center,
    child: SizedBox(
      width: Sizes().characterImageSize,
      height: Sizes().characterImageSize,
      child: Card(
        margin: EdgeInsets.zero,
        child: ClipRRect(borderRadius: BorderRadius.circular(Attributes().borderRadius), child: CustomCachedNetworkImage(imageUrl: imageUrl)),
      ),
    ),
  );
}
