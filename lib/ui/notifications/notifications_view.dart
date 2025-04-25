import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'notifications_view_model.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NotificationsViewModel>.reactive(
      viewModelBuilder: () => NotificationsViewModel(),
      builder:
          (context, viewModel, child) => Scaffold(
            body:
                viewModel.isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : const Center(child: Text('Notifications View Content')),
          ),
    );
  }
}
