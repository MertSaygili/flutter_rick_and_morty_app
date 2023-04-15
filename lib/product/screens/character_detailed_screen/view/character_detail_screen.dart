import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rick_and_morty_app/feature/models/character/character.dart';
import 'package:flutter_rick_and_morty_app/product/screens/character_detailed_screen/cubit/character_detail_cubit.dart';
import 'package:flutter_rick_and_morty_app/product/screens/character_detailed_screen/service/character_detail_service.dart';
import 'package:flutter_rick_and_morty_app/product/screens/character_detailed_screen/states/character_detail_states.dart';

class CharacterDetailScreen extends StatelessWidget {
  const CharacterDetailScreen({super.key, required this.character});

  final Character character;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CharacterDetailCubit(CharacterDetailServiceImpl()),
      child: _buildScaffold(context),
    );
  }

  Widget _buildScaffold(BuildContext context) {
    return BlocConsumer<CharacterDetailCubit, CharacterDetailStates>(
      listener: (context, state) {},
      builder: (context, state) => SizedBox(
        child: state is CharacterDetailInitialState
            ? _buildLoadingWidget(context)
            : state is CharacterDetailLoadedState
                ? _buildLoadedWidget(context, state)
                : _buildLoadingWidget(context),
      ),
    );
  }

  Widget _buildLoadingWidget(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildLoadedWidget(BuildContext context, CharacterDetailLoadedState state) {
    return Column(
      children: const [],
    );
  }
}
