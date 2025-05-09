import 'package:admin_panel/common/helpers/create_bottom_nav_item.dart';
import 'package:admin_panel/common/helpers/create_drawer_item.dart';
import 'package:flutter/material.dart';
import 'package:responsive_size_helper_plus/responsive_size_helper_plus.dart';
import 'package:stacked/stacked.dart';
import 'main_view_model.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MainViewModel>.reactive(
      viewModelBuilder: () => MainViewModel(),
      builder:
          (context, viewModel, child) => LayoutBuilder(
            builder: (context, constraints) {
              final bool isDesktop = constraints.maxWidth >= 800;

              return Scaffold(
                appBar:
                    isDesktop
                        ? null
                        : AppBar(
                          title: const Text('Admin Panel'),
                          elevation: 0,
                        ),
                drawer:
                    isDesktop
                        ? null
                        : _buildDrawer(context, viewModel, isDesktop),
                body: Row(
                  children: [
                    if (isDesktop) _buildDrawer(context, viewModel, isDesktop),
                    Expanded(
                      child:
                          viewModel.isLoading
                              ? const Center(child: CircularProgressIndicator())
                              : getViewForIndex(viewModel.currentTabIndex),
                    ),
                  ],
                ),
                bottomNavigationBar:
                    !isDesktop ? _buildBottomNavigationBar(viewModel) : null,
              );
            },
          ),
    );
  }

  Widget _buildDrawer(
    BuildContext context,
    MainViewModel viewModel,
    bool isDesktop,
  ) {
    return SizedBox(
      width: 280,
      child: Drawer(
        elevation: isDesktop ? 0 : 16,
        backgroundColor: Colors.white,
        child: Column(
          children: [
            _buildDrawerHeader(),
            Expanded(child: _buildDrawerItems(context, viewModel, isDesktop)),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerHeader() {
    return Column(
      children: [
        SizedBox(height: 35.h),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 24,
                backgroundColor: Colors.grey[100],
                backgroundImage: const NetworkImage(
                  'https://avatar.iran.liara.run/public/boy',
                ),
              ),
              const SizedBox(width: 12),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'John Doe',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Admin',
                    style: TextStyle(fontSize: 14, color: Color(0xFF8E8E93)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildDrawerItems(
    BuildContext context,
    MainViewModel viewModel,
    bool isDesktop,
  ) {
    // MENU items (Dashboard ve Starter Pages)
    final menuItems = viewModel.drawerItems.take(2).toList();
    // ELEMENTS items (Components ve sonrası)
    final elementItems = viewModel.drawerItems.skip(2).toList();

    return ListView(
      padding: EdgeInsets.zero,
      children: [
        _buildSectionHeader('MENU'),
        ...menuItems.map(
          (item) =>
              _buildDrawerItemWithSubItems(context, item, viewModel, isDesktop),
        ),
        _buildSectionHeader('ELEMENTS'),
        ...elementItems.map(
          (item) =>
              _buildDrawerItemWithSubItems(context, item, viewModel, isDesktop),
        ),
      ],
    );
  }

  Widget _buildDrawerItemWithSubItems(
    BuildContext context,
    DrawerItem item,
    MainViewModel viewModel,
    bool isDesktop,
  ) {
    final bool isOpen = viewModel.isDrawerItemOpen(item.index);

    return Column(
      children: [
        createDrawerItem(item, viewModel.currentTabIndex, (index) {
          if (item.hasSubItems) {
            viewModel.toggleDrawerItem(item.index);
          } else {
            viewModel.setTabIndex(index);
            if (!isDesktop) Navigator.pop(context);
          }
        }, isExpanded: isOpen),
        if (item.hasSubItems && item.subItems != null && isOpen)
          ...item.subItems!.map(
            (subItem) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: createDrawerItem(subItem, viewModel.currentTabIndex, (
                index,
              ) {
                viewModel.setTabIndex(index);
                if (!isDesktop) Navigator.pop(context);
              }),
            ),
          ),
      ],
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: Color(0xFF8E8E93),
          letterSpacing: 1.2,
        ),
      ),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar(MainViewModel viewModel) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      selectedLabelStyle: const TextStyle(fontSize: 12),
      unselectedLabelStyle: const TextStyle(fontSize: 12),
      items: [
        createNavItem(TabItem.Home, viewModel.currentTabIndex, 0),
        createNavItem(TabItem.Search, viewModel.currentTabIndex, 1),
        createNavItem(TabItem.Explore, viewModel.currentTabIndex, 2),
        createNavItem(TabItem.Alerts, viewModel.currentTabIndex, 3),
        createNavItem(TabItem.Profile, viewModel.currentTabIndex, 4),
      ],
      onTap: (value) {
        viewModel.setTabIndex(value);
      },
      currentIndex: viewModel.currentTabIndex,
    );
  }
}
