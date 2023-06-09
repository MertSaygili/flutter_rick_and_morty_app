import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rick_and_morty_app/feature/components/appbar/custom_main_appbar.dart';
import 'package:flutter_rick_and_morty_app/feature/models/character/character.dart';
import 'package:flutter_rick_and_morty_app/feature/utils/attributes/padding.dart';
import 'package:flutter_rick_and_morty_app/product/screens/character_detailed_screen/cubit/character_detail_cubit.dart';
import 'package:flutter_rick_and_morty_app/product/screens/character_detailed_screen/service/character_detail_service.dart';
import 'package:flutter_rick_and_morty_app/product/screens/character_detailed_screen/states/character_detail_states.dart';
import 'package:flutter_rick_and_morty_app/product/screens/character_detailed_screen/widget/character_image.dart';
import 'package:flutter_rick_and_morty_app/product/screens/character_detailed_screen/widget/episodes_list_view.dart';

class CharacterDetailScreen extends StatelessWidget {
  const CharacterDetailScreen({super.key, required this.character});

  final Character character;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CharacterDetailCubit(CharacterDetailServiceImpl(), character),
      child: _buildScaffold(context),
    );
  }

  Widget _buildScaffold(BuildContext context) {
    return BlocConsumer<CharacterDetailCubit, CharacterDetailStates>(
      listener: (context, state) {},
      builder: (context, state) => Scaffold(
        appBar: const CustomMainAppbar(returnBack: true),
        body: state is CharacterDetailInitialState
            ? _buildLoadingWidget(context)
            : state is CharacterDetailLoadedState
                ? _buildLoadedWidget(context, state)
                : _buildLoadingWidget(context),
      ),
    );
  }

  Widget _buildLoadingWidget(BuildContext context) {
    context.read<CharacterDetailCubit>().getEpisodes();
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildLoadedWidget(BuildContext context, CharacterDetailLoadedState state) {
    return Center(
      child: Padding(
        padding: CustomPaddings().marginLarge,
        child: Column(
          children: [
            characterImage(context, character.image ?? ''),
            const SizedBox(height: 20),
            Text(character.name ?? '', style: Theme.of(context).textTheme.displayMedium, overflow: TextOverflow.ellipsis),
            const SizedBox(height: 10),
            Text('${character.origin?.name} - ${character.location?.name}',
                style: Theme.of(context).textTheme.displaySmall, overflow: TextOverflow.ellipsis),
            const SizedBox(height: 10),
            Text('${character.species} - ${character.gender}', style: Theme.of(context).textTheme.displaySmall, overflow: TextOverflow.ellipsis),
            const SizedBox(height: 10),
            Text(character.status ?? '', style: Theme.of(context).textTheme.displaySmall, overflow: TextOverflow.ellipsis),
            const Spacer(),
            EpisodesListView(episodes: state.episodes)
          ],
        ),
      ),
    );
  }
}
