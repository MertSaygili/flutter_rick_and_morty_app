import 'package:flutter/material.dart';
import 'package:flutter_rick_and_morty_app/feature/components/cards/character_undetail_card.dart';
import 'package:flutter_rick_and_morty_app/feature/models/character/character.dart';

class CharactersListView extends StatelessWidget {
  const CharactersListView({super.key, required this.characters});

  final List<Character> characters;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: characters.length,
      itemBuilder: (context, index) {
        return CharacterUndetailCard(character: characters[index]);
      },
    );
  }
}
