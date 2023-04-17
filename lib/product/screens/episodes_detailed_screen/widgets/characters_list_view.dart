import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rick_and_morty_app/core/route/app_route.gr.dart';
import 'package:flutter_rick_and_morty_app/feature/components/cards/character_undetail_card.dart';
import 'package:flutter_rick_and_morty_app/feature/models/character/character.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key, required this.characters});

  final List<Character> characters;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: characters.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () => context.router.push(CharecterDetailRoute(character: characters[index])),
          child: CharacterUndetailCard(character: characters[index]),
        );
      },
    );
  }
}
