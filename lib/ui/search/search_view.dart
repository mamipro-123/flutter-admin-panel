import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'search_view_model.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SearchViewModel>.reactive(
      viewModelBuilder: () => SearchViewModel(),
      builder:
          (context, viewModel, child) => Scaffold(
            appBar: AppBar(title: const Text('Search')),
            body:
                viewModel.isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : const Center(child: Text('Search View Content')),
          ),
    );
  }
}
