import 'package:admin_panel/ui/home/home_view.dart';
import 'package:admin_panel/ui/main/main_view.dart';
import 'package:admin_panel/ui/login/login_view.dart';
import 'package:admin_panel/ui/notifications/notifications_view.dart';
import 'package:admin_panel/ui/profile/profile_view.dart';
import 'package:admin_panel/ui/search/search_view.dart';
import 'package:stacked/stacked_annotations.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: LoginView),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: MainView),
    MaterialRoute(page: NotificationsView),
    MaterialRoute(page: ProfileView),
    MaterialRoute(page: SearchView),
  ],
)
class App {}
