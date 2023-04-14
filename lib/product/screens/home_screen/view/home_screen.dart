import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rick_and_morty_app/product/screens/home_screen/cubit/home_screen_cubit.dart';
import 'package:flutter_rick_and_morty_app/product/screens/home_screen/service/home_screen_service.dart';
import 'package:flutter_rick_and_morty_app/product/screens/home_screen/states/home_screen_states.dart';
import 'package:flutter_rick_and_morty_app/product/screens/home_screen/widgets/characters_list_view.dart';
import 'package:flutter_rick_and_morty_app/product/screens/home_screen/widgets/locations_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => HomeScreenCubit(HomeScreenServiceImpl()), child: _buildScaffold());
  }

  Widget _buildScaffold() {
    return BlocConsumer<HomeScreenCubit, HomeScreenStates>(
      listener: (context, state) {},
      builder: (context, state) => SizedBox(
        child: state is HomeScreenInitialState
            ? _buildLoadingWidget(context)
            : state is HomeScreenLoadedState
                ? _buildLoadedWidget(context, state)
                : _buildLoadingWidget(context),
      ),
    );
  }

  Widget _buildLoadingWidget(BuildContext context) {
    _getLocations(context);
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildLoadedWidget(BuildContext context, HomeScreenLoadedState state) {
    return Column(
      children: [
        Expanded(flex: 15, child: LocationsHorizontalListView(locations: state.locations)),
        Expanded(
          flex: 85,
          child: state.fetchCharactersLoading ? const Center(child: CircularProgressIndicator()) : CharactersListView(characters: state.characters),
        ),
      ],
    );
  }

  void _getLocations(BuildContext context) {
    context.read<HomeScreenCubit>().getLocations();
  }
}
