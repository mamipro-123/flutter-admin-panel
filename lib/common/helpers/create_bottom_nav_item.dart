import 'package:admin_panel/ui/home/home_view.dart';
import 'package:admin_panel/ui/main/main_view.dart';
import 'package:admin_panel/ui/notifications/notifications_view.dart';
import 'package:admin_panel/ui/profile/profile_view.dart';
import 'package:admin_panel/ui/search/search_view.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

BottomNavigationBarItem createNavItem(
  TabItem tabItem,
  int currentIndex,
  int index,
) {
  final currentTab = TabItemData.tabs[tabItem]!;
  final isSelected = currentIndex == index;

  return BottomNavigationBarItem(
    icon: Icon(
      isSelected ? currentTab.selectedIcon : currentTab.icon,
      color: isSelected ? Colors.blue : Colors.grey,
    ),
    label: currentTab.title,
  );
}

enum TabItem { Home, Search, Explore, Alerts, Profile }

class TabItemData {
  final String title;
  final IconData icon;
  final IconData selectedIcon;

  TabItemData({
    required this.title,
    required this.icon,
    required this.selectedIcon,
  });

  static Map<TabItem, TabItemData> tabs = {
    TabItem.Home: TabItemData(
      icon: Icons.home_outlined,
      selectedIcon: Icons.home,
      title: "Home",
    ),
    TabItem.Search: TabItemData(
      icon: Icons.search_outlined,
      selectedIcon: Icons.search,
      title: "Search",
    ),
    TabItem.Explore: TabItemData(
      icon: Icons.explore_outlined,
      selectedIcon: Icons.explore,
      title: "Explore",
    ),
    TabItem.Alerts: TabItemData(
      icon: Icons.notifications_outlined,
      selectedIcon: Icons.notifications,
      title: "Alerts",
    ),
    TabItem.Profile: TabItemData(
      icon: Icons.person_outline,
      selectedIcon: Icons.person,
      title: "Profile",
    ),
  };
}

Widget getViewForIndex(int index) {
  switch (index) {
    case 0:
      return const NotificationsView();
    case 1:
      return const SearchView();
    case 2:
      return const HomeView(); // Explore view will be added
    case 3:
      return const NotificationsView();
    case 4:
      return const ProfileView();
    default:
      return const HomeView();
  }
}
