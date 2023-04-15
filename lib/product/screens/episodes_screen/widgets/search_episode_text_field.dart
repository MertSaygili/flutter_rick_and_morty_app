import 'package:flutter/material.dart';
import 'package:flutter_rick_and_morty_app/feature/utils/attributes/attributes.dart';
import 'package:flutter_rick_and_morty_app/feature/utils/attributes/icons.dart';

class SearchEpisodeTextField extends StatelessWidget {
  const SearchEpisodeTextField({super.key, required this.fun});

  final String _searchText = 'Enter episode name or number here (e.g. S01E01)';
  final Function fun;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Theme.of(context).colorScheme.onPrimary,
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 18),
      onChanged: (value) => fun(value),
      decoration: InputDecoration(
        hintStyle: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 15),
        labelStyle: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 15),
        hintText: _searchText,
        prefixIcon: CustomIcons().searchHint,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(Attributes().borderRadius)),
        filled: true,
        fillColor: Theme.of(context).colorScheme.primary,
        focusColor: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
