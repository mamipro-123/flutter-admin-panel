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
        child: ListView(
          padding: EdgeInsets.zero,
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
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Admin',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF8E8E93),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Text(
                'MENU',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF8E8E93),
                  letterSpacing: 1.2,
                ),
              ),
            ),
            createDrawerItem(
              const DrawerItem(
                title: 'Dashboard',
                icon: Icons.dashboard_outlined,
                index: 0,
              ),
              viewModel.currentTabIndex,
              (index) {
                viewModel.setTabIndex(index);
                if (!isDesktop) Navigator.pop(context);
              },
            ),
            createDrawerItem(
              const DrawerItem(
                title: 'Starter Pages',
                icon: Icons.article_outlined,
                index: 1,
              ),
              viewModel.currentTabIndex,
              (index) {
                viewModel.setTabIndex(index);
                if (!isDesktop) Navigator.pop(context);
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Text(
                'ELEMENTS',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF8E8E93),
                  letterSpacing: 1.2,
                ),
              ),
            ),
            createDrawerItem(
              const DrawerItem(
                title: 'Components',
                icon: Icons.widgets_outlined,
                index: 2,
                hasSubItems: true,
              ),
              viewModel.currentTabIndex,
              (index) {
                viewModel.setTabIndex(index);
                if (!isDesktop) Navigator.pop(context);
              },
            ),
            createDrawerItem(
              const DrawerItem(
                title: 'Forms',
                icon: Icons.edit_note_outlined,
                index: 3,
                hasSubItems: true,
              ),
              viewModel.currentTabIndex,
              (index) {
                viewModel.setTabIndex(index);
                if (!isDesktop) Navigator.pop(context);
              },
            ),
            createDrawerItem(
              const DrawerItem(
                title: 'Maps',
                icon: Icons.map_outlined,
                index: 4,
              ),
              viewModel.currentTabIndex,
              (index) {
                viewModel.setTabIndex(index);
                if (!isDesktop) Navigator.pop(context);
              },
            ),
            createDrawerItem(
              const DrawerItem(
                title: 'Tables',
                icon: Icons.table_chart_outlined,
                index: 5,
              ),
              viewModel.currentTabIndex,
              (index) {
                viewModel.setTabIndex(index);
                if (!isDesktop) Navigator.pop(context);
              },
            ),
            createDrawerItem(
              const DrawerItem(
                title: 'Chart',
                icon: Icons.pie_chart_outline,
                index: 6,
              ),
              viewModel.currentTabIndex,
              (index) {
                viewModel.setTabIndex(index);
                if (!isDesktop) Navigator.pop(context);
              },
            ),
            createDrawerItem(
              const DrawerItem(
                title: 'Icons',
                icon: Icons.emoji_objects_outlined,
                index: 7,
              ),
              viewModel.currentTabIndex,
              (index) {
                viewModel.setTabIndex(index);
                if (!isDesktop) Navigator.pop(context);
              },
            ),
            createDrawerItem(
              const DrawerItem(
                title: 'Level',
                icon: Icons.layers_outlined,
                index: 8,
                hasSubItems: true,
              ),
              viewModel.currentTabIndex,
              (index) {
                viewModel.setTabIndex(index);
                if (!isDesktop) Navigator.pop(context);
              },
            ),
            createDrawerItem(
              const DrawerItem(
                title: 'Badge Items',
                icon: Icons.verified_outlined,
                index: 9,
                isHot: true,
              ),
              viewModel.currentTabIndex,
              (index) {
                viewModel.setTabIndex(index);
                if (!isDesktop) Navigator.pop(context);
              },
            ),
          ],
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
