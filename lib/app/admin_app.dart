import 'package:admin_panel/app/app.router.dart';
import 'package:admin_panel/app/app_base_view_model.dart';
import 'package:admin_panel/core/di/get_it.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_size_helper_plus/responsive_size_helper_plus.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AdminApp extends StatelessWidget {
  final String initalPage;
  const AdminApp({super.key, required this.initalPage});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(<DeviceOrientation>[
      DeviceOrientation.portraitUp,
    ]);
    ResponsiveSizeHelper.init(
      designWidth: 375,
      designHeight: 812,
      currentWidth: MediaQuery.of(context).size.width,
      currentHeight: MediaQuery.of(context).size.height,
    );

    return ViewModelBuilder<AppBaseViewModel>.reactive(
      viewModelBuilder: () => getIt<AppBaseViewModel>(),
      onViewModelReady: (viewModel) => viewModel.initialise(),
      builder:
          (context, viewModel, child) => MaterialApp(
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            navigatorKey: StackedService.navigatorKey,
            onGenerateRoute: StackedRouter().onGenerateRoute,
            navigatorObservers: [StackedService.routeObserver],
            title: "AdminApp",
            debugShowCheckedModeBanner: false,
            initialRoute: initalPage,
          ),
    );
  }
}
