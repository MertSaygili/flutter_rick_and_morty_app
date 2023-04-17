import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rick_and_morty_app/core/route/app_route.gr.dart';
import 'package:flutter_rick_and_morty_app/feature/components/cards/episodes_undetail_card.dart';
import 'package:flutter_rick_and_morty_app/feature/models/episodes/episode.dart';
import 'package:flutter_rick_and_morty_app/product/screens/episodes_screen/cubit/episodes_cubit.dart';
import 'package:flutter_rick_and_morty_app/product/screens/episodes_screen/states/episodes_states.dart';

class EpisodeListview extends StatelessWidget {
  const EpisodeListview({super.key, required this.episodes, required this.state});

  final List<Episode> episodes;
  final EpisodesLoadedState state;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: episodes.length + 1,
      itemBuilder: (context, index) {
        if (index == (state.episodes.length) && context.read<EpisodeCubit>().isLastPage) return null;
        if (index == (state.episodes.length)) {
          if (context.read<EpisodeCubit>().searchText.isEmpty) {
            context.read<EpisodeCubit>().getMoreEpisodes();
            return context.read<EpisodeCubit>().isLastPage == true ? const SizedBox() : const Center(child: CircularProgressIndicator());
          }
          return const SizedBox();
        } else {
          return InkWell(
            onTap: () => context.router.push(EpisodesDetailedRoute(episode: episodes[index])),
            child: EpisodeUndetailCard(episode: episodes[index]),
          );
        }
      },
    );
  }
}
