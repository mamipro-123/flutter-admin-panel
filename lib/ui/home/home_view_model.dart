import 'package:admin_panel/ui/widgets/account_transactions_table.dart';
import 'package:admin_panel/ui/widgets/donut_chart_card.dart';
import 'package:admin_panel/ui/widgets/recent_buyers_table.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  bool _isLoading = false;
  bool get isLoading => _isLoading;
  int _currentTabIndex = 0;
  int get currentTabIndex => _currentTabIndex;
  bool _reverse = false;
  bool get reverse => _reverse;

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

  // Stats data
  final List<Map<String, dynamic>> stats = [
    {
      'title': 'Total Order',
      'value': '2415',
      'icon': Icons.shopping_bag_outlined,
      'iconColor': Colors.teal,
      'chartColor': Colors.teal,
      'data': [0.5, 0.8, 0.4, 0.7, 0.9, 0.6],
    },
    {
      'title': 'Total Sale',
      'value': '\$78.5K',
      'icon': Icons.attach_money,
      'iconColor': Colors.purple,
      'chartColor': Colors.purple,
      'data': [0.6, 0.9, 0.5, 0.3, 0.7, 0.8],
    },
    {
      'title': 'Total Visits',
      'value': '145.2K',
      'icon': Icons.visibility_outlined,
      'iconColor': Colors.blue,
      'chartColor': Colors.blue,
      'data': [0.3, 0.7, 0.5, 0.8, 0.9, 0.5],
    },
    {
      'title': 'Total Balance',
      'value': '\$758K',
      'icon': Icons.account_balance_outlined,
      'iconColor': Colors.orange,
      'chartColor': Colors.orange,
      'data': [0.4, 0.8, 0.6, 0.7, 0.9, 0.4],
    },
  ];

  // Line chart data
  final List<double> revenueData = [
    25,
    55,
    41,
    67,
    45,
    54,
    56,
    45,
    75,
    65,
    62,
    61,
  ];
  final List<double> ordersData = [
    10,
    12,
    11,
    18,
    14,
    15,
    16,
    12,
    13,
    15,
    14,
    30,
  ];

  // Donut chart data
  final List<ProductData> products = [
    ProductData(name: 'Products A', value: 2125, color: Colors.purple),
    ProductData(name: 'Products B', value: 1763, color: Colors.green),
    ProductData(name: 'Products C', value: 973, color: Colors.red),
  ];

  // Recent buyers data
  final List<BuyerData> buyers = [
    BuyerData(
      product: 'iPhone X',
      customer: 'Tiffany W. Yang',
      category: 'Mobile',
      popularity: 0.75,
      amount: 1200.00,
    ),
    BuyerData(
      product: 'iPad',
      customer: 'Dale P. Warman',
      category: 'Tablet',
      popularity: 0.65,
      amount: 1190.00,
    ),
    BuyerData(
      product: 'OnePlus',
      customer: 'Garth J. Terry',
      category: 'Electronics',
      popularity: 0.45,
      amount: 999.00,
    ),
    BuyerData(
      product: 'ZenPad',
      customer: 'Marilyn D. Bailey',
      category: 'Cosmetics',
      popularity: 0.35,
      amount: 1150.00,
    ),
    BuyerData(
      product: 'Pixel 2',
      customer: 'Denise R. Vaughan',
      category: 'Appliences',
      popularity: 0.85,
      amount: 1180.00,
    ),
    BuyerData(
      product: 'Pixel 2',
      customer: 'Jeffery R. Wilson',
      category: 'Mobile',
      popularity: 0.45,
      amount: 1180.00,
    ),
  ];

  // Account transactions data
  final List<TransactionData> transactions = [
    TransactionData(
      accountNumber: '4257 **** **** 7852',
      date: '11 April 2023',
      amount: 79.49,
      cardType: 'Visa Card',
      cardHolder: 'Helen Warren',
    ),
    TransactionData(
      accountNumber: '4427 **** **** 4568',
      date: '28 Jan 2023',
      amount: 1254.00,
      cardType: 'Visa Card',
      cardHolder: 'Kayla Lambie',
    ),
    TransactionData(
      accountNumber: '4265 **** **** 0025',
      date: '08 Dec 2022',
      amount: 784.25,
      cardType: 'Master Card',
      cardHolder: 'Hugo Lavarack',
    ),
    TransactionData(
      accountNumber: '7845 **** **** 5214',
      date: '03 Dec 2022',
      amount: 485.24,
      cardType: 'Stripe Card',
      cardHolder: 'Amber Scurry',
    ),
    TransactionData(
      accountNumber: '4257 **** **** 7852',
      date: '12 Nov 2022',
      amount: 8964.04,
      cardType: 'Maestro Card',
      cardHolder: 'Caitlyn Gibney',
    ),
  ];

  void handleExport() {
    // TODO: Implement export functionality
  }
}
