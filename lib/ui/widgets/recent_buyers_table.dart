import 'package:flutter/material.dart';

class BuyerData {
  final String product;
  final String customer;
  final String category;
  final double popularity;
  final double amount;

  const BuyerData({
    required this.product,
    required this.customer,
    required this.category,
    required this.popularity,
    required this.amount,
  });
}

class RecentBuyersTable extends StatelessWidget {
  final List<BuyerData> buyers;
  final VoidCallback onExport;

  const RecentBuyersTable({
    Key? key,
    required this.buyers,
    required this.onExport,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Recent Buyers',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                TextButton(
                  onPressed: onExport,
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.grey[100],
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'Export',
                    style: TextStyle(color: Colors.grey[700], fontSize: 14),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Theme(
                data: Theme.of(
                  context,
                ).copyWith(dividerColor: Colors.grey[200]),
                child: DataTable(
                  columnSpacing: 24,
                  horizontalMargin: 0,
                  dataRowMinHeight: 60,
                  dataRowMaxHeight: 60,
                  columns: const [
                    DataColumn(
                      label: Text(
                        'Product',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Customers',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Categories',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Popularity',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Amount',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                  rows:
                      buyers.map((buyer) {
                        return DataRow(
                          cells: [
                            DataCell(
                              SizedBox(
                                width: 100,
                                child: Text(
                                  buyer.product,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            DataCell(
                              SizedBox(width: 120, child: Text(buyer.customer)),
                            ),
                            DataCell(
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.blue.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Text(
                                  buyer.category,
                                  style: const TextStyle(
                                    color: Colors.blue,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                            DataCell(
                              SizedBox(
                                width: 150,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(4),
                                        child: LinearProgressIndicator(
                                          value: buyer.popularity,
                                          backgroundColor: Colors.grey[100],
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                                Colors.blue.withOpacity(0.8),
                                              ),
                                          minHeight: 8,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 12),
                                    Text(
                                      '${(buyer.popularity * 100).toInt()}%',
                                      style: TextStyle(
                                        color: Colors.grey[600],
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            DataCell(
                              SizedBox(
                                width: 80,
                                child: Text(
                                  '\$${buyer.amount.toStringAsFixed(2)}',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
