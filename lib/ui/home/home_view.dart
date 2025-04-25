import 'package:admin_panel/common/helpers/create_bottom_nav_item.dart';
import 'package:admin_panel/ui/home/home_view_model.dart';
import 'package:admin_panel/ui/widgets/account_transactions_table.dart';
import 'package:admin_panel/ui/widgets/donut_chart_card.dart';
import 'package:admin_panel/ui/widgets/line_chart_card.dart';
import 'package:admin_panel/ui/widgets/recent_buyers_table.dart';
import 'package:admin_panel/ui/widgets/stat_chart_card.dart';
import 'package:flutter/material.dart';
import 'package:responsive_size_helper_plus/responsive_size_helper_plus.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder:
          (context, viewModel, child) => Scaffold(
            body:
                viewModel.isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : SingleChildScrollView(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Dashboard',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 24),
                          // Stats Cards in Grid
                          LayoutBuilder(
                            builder: (context, constraints) {
                              return Wrap(
                                spacing: 24,
                                runSpacing: 24,
                                children:
                                    viewModel.stats.map((stat) {
                                      return SizedBox(
                                        width: _getCardWidth(
                                          constraints.maxWidth,
                                        ),
                                        child: StatChartCard(
                                          title: stat['title'],
                                          value: stat['value'],
                                          icon: stat['icon'],
                                          iconColor: stat['iconColor'],
                                          chartColor: stat['chartColor'],
                                          data: List<double>.from(stat['data']),
                                        ),
                                      );
                                    }).toList(),
                              );
                            },
                          ),
                          const SizedBox(height: 24),
                          // Charts Section
                          LayoutBuilder(
                            builder: (context, constraints) {
                              if (constraints.maxWidth > 1200) {
                                // Desktop Layout
                                return Column(
                                  children: [
                                    // First Row: Line Chart
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: LineChartCard(
                                            revenueData: viewModel.revenueData,
                                            ordersData: viewModel.ordersData,
                                            onExport: viewModel.handleExport,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 24),
                                    // Second Row: Recent Buyers and Account Transactions
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: RecentBuyersTable(
                                            buyers: viewModel.buyers,
                                            onExport: viewModel.handleExport,
                                          ),
                                        ),
                                        const SizedBox(width: 24),
                                        Expanded(
                                          child: AccountTransactionsTable(
                                            transactions:
                                                viewModel.transactions,
                                            onExport: viewModel.handleExport,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                );
                              } else if (constraints.maxWidth > 800) {
                                // Tablet Layout
                                return Column(
                                  children: [
                                    LineChartCard(
                                      revenueData: viewModel.revenueData,
                                      ordersData: viewModel.ordersData,
                                      onExport: viewModel.handleExport,
                                    ),
                                    const SizedBox(height: 24),
                                    RecentBuyersTable(
                                      buyers: viewModel.buyers,
                                      onExport: viewModel.handleExport,
                                    ),
                                    const SizedBox(height: 24),
                                    AccountTransactionsTable(
                                      transactions: viewModel.transactions,
                                      onExport: viewModel.handleExport,
                                    ),
                                  ],
                                );
                              } else {
                                // Mobile Layout
                                return Column(
                                  children: [
                                    LineChartCard(
                                      revenueData: viewModel.revenueData,
                                      ordersData: viewModel.ordersData,
                                      onExport: viewModel.handleExport,
                                    ),
                                    const SizedBox(height: 24),
                                    DonutChartCard(
                                      products: viewModel.products,
                                      total: 431,
                                      onExport: viewModel.handleExport,
                                    ),
                                    const SizedBox(height: 24),
                                    RecentBuyersTable(
                                      buyers: viewModel.buyers,
                                      onExport: viewModel.handleExport,
                                    ),
                                    const SizedBox(height: 24),
                                    AccountTransactionsTable(
                                      transactions: viewModel.transactions,
                                      onExport: viewModel.handleExport,
                                    ),
                                  ],
                                );
                              }
                            },
                          ),
                        ],
                      ),
                    ),
          ),
    );
  }

  double _getCardWidth(double screenWidth) {
    if (screenWidth > 1200) {
      // 4 cards per row
      return (screenWidth - (24 * 3)) / 4;
    } else if (screenWidth > 800) {
      // 2 cards per row
      return (screenWidth - 24) / 2;
    } else {
      // 1 card per row
      return screenWidth;
    }
  }
}
