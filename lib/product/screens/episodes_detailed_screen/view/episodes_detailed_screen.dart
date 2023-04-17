import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rick_and_morty_app/feature/components/appbar/custom_main_appbar.dart';
import 'package:flutter_rick_and_morty_app/feature/models/episodes/episode.dart';
import 'package:flutter_rick_and_morty_app/product/screens/episodes_detailed_screen/cubit/episodes_detailed_cubit.dart';
import 'package:flutter_rick_and_morty_app/product/screens/episodes_detailed_screen/service/episodes_detailed_service.dart';
import 'package:flutter_rick_and_morty_app/product/screens/episodes_detailed_screen/state/episodes_detailed_states.dart';
import 'package:flutter_rick_and_morty_app/product/screens/episodes_detailed_screen/widgets/episode_list_tile.dart';
import 'package:flutter_rick_and_morty_app/product/screens/home_screen/widgets/characters_list_view.dart';

class EpisodesDetailedScreen extends StatelessWidget {
  const EpisodesDetailedScreen({super.key, required this.episode});

  final Episode episode;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EpisodesDetailedCubit(EpisodesDetatiledServiceImpl(), episode),
      child: _buildScaffold(context),
    );
  }

  Widget _buildScaffold(BuildContext context) {
    return BlocConsumer<EpisodesDetailedCubit, EpisodesDetailedStates>(
      listener: (context, state) {},
      builder: (context, state) => _initialScaffold(context, state),
    );
  }

  Widget _initialScaffold(BuildContext context, EpisodesDetailedStates state) {
    return Scaffold(
      appBar: const CustomMainAppbar(returnBack: true),
      body: Column(
        children: [
          Expanded(flex: 20, child: EpisodeListTile(episode: episode)),
          state is InitialEpisodesDetailedState
              ? _initialBody(context)
              : context.read<EpisodesDetailedCubit>().fetchCharactersLoading
                  ? _loadingBody()
                  : _loadedBody(context, state as LoadedEpisodesDetailedState),
        ],
      ),
    );
  }

  Widget _initialBody(BuildContext context) {
    context.read<EpisodesDetailedCubit>().getCharacters();
    return _loadingBody();
  }

  Widget _loadingBody() => const Expanded(flex: 80, child: Center(child: CircularProgressIndicator()));

  Widget _loadedBody(BuildContext context, LoadedEpisodesDetailedState state) {
    return Expanded(flex: 80, child: CharactersListView(characters: state.characters));
  }
}
