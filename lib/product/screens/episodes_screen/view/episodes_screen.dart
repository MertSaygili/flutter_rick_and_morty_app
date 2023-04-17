import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rick_and_morty_app/feature/components/appbar/custom_main_appbar.dart';
import 'package:flutter_rick_and_morty_app/feature/utils/attributes/padding.dart';
import 'package:flutter_rick_and_morty_app/product/screens/episodes_screen/cubit/episodes_cubit.dart';
import 'package:flutter_rick_and_morty_app/product/screens/episodes_screen/service/episodes_service.dart';
import 'package:flutter_rick_and_morty_app/product/screens/episodes_screen/states/episodes_states.dart';
import 'package:flutter_rick_and_morty_app/product/screens/episodes_screen/widgets/episode_list_view.dart';
import 'package:flutter_rick_and_morty_app/product/screens/episodes_screen/widgets/search_episode_text_field.dart';

class EpisodesScreen extends StatelessWidget {
  const EpisodesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EpisodeCubit(EpisodeServiceImpl()),
      child: _buildScaffold(context),
    );
  }

  Widget _buildScaffold(BuildContext context) {
    return BlocConsumer<EpisodeCubit, EpisodeStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: const CustomMainAppbar(),
            body: state is EpisodesInitialState
                ? _buildLoadingWidget(context)
                : state is EpisodesLoadedState
                    ? _buildLoadedWidget(context, state)
                    : _buildLoadingWidget(context));
      },
    );
  }

  Widget _buildLoadingWidget(BuildContext context) {
    context.read<EpisodeCubit>().getEpisodes(1);
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildLoadedWidget(BuildContext context, EpisodesLoadedState state) {
    return Padding(
      padding: CustomPaddings().marginHorizontalNormal,
      child: Column(
        children: [
          Expanded(flex: 15, child: Center(child: SearchEpisodeTextField(fun: context.read<EpisodeCubit>().setSearchText))),
          Expanded(flex: 85, child: EpisodeListview(episodes: state.episodes, state: state)),
        ],
      ),
    );
  }
}
