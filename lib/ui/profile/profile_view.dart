import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'profile_view_model.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewModel>.reactive(
      viewModelBuilder: () => ProfileViewModel(),
      builder:
          (context, viewModel, child) => Scaffold(
            body:
                viewModel.isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : const Center(child: Text('Profile View Content')),
          ),
    );
  }
}
