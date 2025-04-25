import 'package:admin_panel/common/helpers/create_drawer_item.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class MainViewModel extends BaseViewModel {
  bool _isLoading = false;
  bool get isLoading => _isLoading;
  int _currentTabIndex = 0;
  int get currentTabIndex => _currentTabIndex;
  bool _reverse = false;
  bool get reverse => _reverse;

  // Açık olan drawer item'ların index'lerini tutan set
  final Set<int> _openDrawerItems = {};

  // Bir drawer item'ın açık olup olmadığını kontrol eden metod
  bool isDrawerItemOpen(int index) => _openDrawerItems.contains(index);

  // Drawer item'ı açıp kapatmak için metod
  void toggleDrawerItem(int index) {
    if (_openDrawerItems.contains(index)) {
      _openDrawerItems.remove(index);
    } else {
      _openDrawerItems.add(index);
    }
    notifyListeners();
  }

  final List<DrawerItem> _drawerItems = [
    // MENU section items
    const DrawerItem(
      title: 'Dashboard',
      icon: Icons.dashboard_outlined,
      index: 0,
    ),
    const DrawerItem(
      title: 'Starter Pages',
      icon: Icons.article_outlined,
      index: 1,
    ),
    // ELEMENTS section items
    DrawerItem(
      title: 'Components',
      icon: Icons.widgets_outlined,
      index: 2,
      hasSubItems: true,
      subItems: [
        DrawerItem(
          title: 'Buttons',
          icon: Icons.radio_button_unchecked,
          index: 20,
        ),
        DrawerItem(title: 'Cards', icon: Icons.credit_card, index: 21),
        DrawerItem(title: 'Dialogs', icon: Icons.message_outlined, index: 22),
        DrawerItem(
          title: 'Progress Bars',
          icon: Icons.pie_chart_outline,
          index: 23,
        ),
      ],
    ),
    const DrawerItem(
      title: 'Forms',
      icon: Icons.edit_note_outlined,
      index: 3,
      hasSubItems: true,
    ),
    const DrawerItem(title: 'Maps', icon: Icons.map_outlined, index: 4),
    const DrawerItem(
      title: 'Tables',
      icon: Icons.table_chart_outlined,
      index: 5,
    ),
    const DrawerItem(title: 'Chart', icon: Icons.pie_chart_outline, index: 6),
    const DrawerItem(
      title: 'Icons',
      icon: Icons.emoji_objects_outlined,
      index: 7,
    ),
    const DrawerItem(
      title: 'Level',
      icon: Icons.layers_outlined,
      index: 8,
      hasSubItems: true,
    ),
    const DrawerItem(
      title: 'Badge Items',
      icon: Icons.verified_outlined,
      index: 9,
      isHot: true,
    ),
  ];

  List<DrawerItem> get drawerItems => _drawerItems;

  void setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  void setTabIndex(int value) {
    if (value < _currentTabIndex) {
      _reverse = true;
    }
    _currentTabIndex = value;
    notifyListeners();
  }
}
