import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rick_and_morty_app/core/constants/colors.dart';
import 'package:flutter_rick_and_morty_app/feature/components/appbar/custom_main_appbar.dart';
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
      builder: (context, state) => Scaffold(
        appBar: const CustomMainAppbar(),
        body: state is HomeScreenInitialState
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
        Expanded(flex: 15, child: LocationsHorizontalListView(locations: state.locations, state: state)),
        Expanded(
          flex: 85,
          child: state.fetchCharactersLoading
              ? const Center(child: CircularProgressIndicator())
              : state.characters.isEmpty
                  ? _noCharacterFound(context)
                  : CharactersListView(characters: state.characters),
        ),
      ],
    );
  }

  Center _noCharacterFound(BuildContext context) {
    return Center(
      child: Text(
        context.watch<HomeScreenCubit>().errorMessage,
        style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: CustomColors.black),
      ),
    );
  }

  void _getLocations(BuildContext context) {
    context.read<HomeScreenCubit>().getLocations();
  }
}
