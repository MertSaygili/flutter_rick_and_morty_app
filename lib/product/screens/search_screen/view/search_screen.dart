import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rick_and_morty_app/core/constants/colors.dart';
import 'package:flutter_rick_and_morty_app/feature/components/appbar/custom_main_appbar.dart';
import 'package:flutter_rick_and_morty_app/feature/utils/attributes/padding.dart';
import 'package:flutter_rick_and_morty_app/product/screens/home_screen/widgets/characters_list_view.dart';
import 'package:flutter_rick_and_morty_app/product/screens/search_screen/cubit/search_cubit.dart';
import 'package:flutter_rick_and_morty_app/product/screens/search_screen/service/search_service.dart';
import 'package:flutter_rick_and_morty_app/product/screens/search_screen/state/search_states.dart';
import 'package:flutter_rick_and_morty_app/product/screens/search_screen/widgets/search_character_text_field.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(SearchServiceImpl()),
      child: _buildScaffold(context),
    );
  }

  Widget _buildScaffold(BuildContext context) {
    return BlocConsumer<SearchCubit, SearchStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: const CustomMainAppbar(),
          body: _initialBody(context, state),
        );
      },
    );
  }

  Widget _initialBody(BuildContext context, SearchStates state) {
    return Padding(
      padding: CustomPaddings().marginHorizontalNormal,
      child: Column(
        children: [
          Expanded(flex: 15, child: Center(child: SearchCharacterTextField(fun: context.read<SearchCubit>().setSearchText))),
          state is InitialSearchState
              ? _emptyBody()
              : state is LoadedSearchState
                  ? _loadedBody(state)
                  : state is LoadingSearchState
                      ? _loadingBody()
                      : state is ErrorSearchState
                          ? _errorSearchBody(state, context)
                          : _emptyBody()
        ],
      ),
    );
  }

  Expanded _emptyBody() => const Expanded(flex: 85, child: SizedBox());

  Expanded _loadedBody(LoadedSearchState state) => Expanded(flex: 85, child: CharactersListView(characters: state.characters));

  Expanded _errorSearchBody(ErrorSearchState state, BuildContext context) {
    return Expanded(
      flex: 85,
      child: Center(child: Text(state.errorMessage, style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: CustomColors.black))),
    );
  }

  Widget _loadingBody() {
    return const Expanded(flex: 85, child: Center(child: CircularProgressIndicator()));
  }
}
