import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ProductData {
  final String name;
  final double value;
  final Color color;

  const ProductData({
    required this.name,
    required this.value,
    required this.color,
  });
}

class DonutChartCard extends StatelessWidget {
  final List<ProductData> products;
  final int total;
  final VoidCallback onExport;

  const DonutChartCard({
    Key? key,
    required this.products,
    required this.total,
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
            AspectRatio(
              aspectRatio: 1,
              child: PieChart(
                PieChartData(
                  sectionsSpace: 0,
                  centerSpaceRadius: 70,
                  sections:
                      products.map((product) {
                        return PieChartSectionData(
                          color: product.color,
                          value: product.value,
                          title: '',
                          radius: 50,
                          showTitle: false,
                        );
                      }).toList(),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Center(
              child: Column(
                children: [
                  Text(
                    'Total',
                    style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    total.toString(),
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Column(
              children:
                  products
                      .map(
                        (product) => _buildLegendItem(
                          product.name,
                          '\$${product.value.toStringAsFixed(0)}',
                          product.color,
                        ),
                      )
                      .toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLegendItem(String label, String value, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          ),
          const SizedBox(width: 12),
          Text(
            label,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          const Spacer(),
          Text(
            value,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
