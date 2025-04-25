import 'package:flutter/material.dart';

class DrawerItem {
  final String title;
  final IconData icon;
  final int index;
  final bool hasSubItems;
  final bool isHot;

  const DrawerItem({
    required this.title,
    required this.icon,
    required this.index,
    this.hasSubItems = false,
    this.isHot = false,
  });
}

ListTile createDrawerItem(
  DrawerItem item,
  int currentIndex,
  Function(int) onTap,
) {
  final bool isSelected = currentIndex == item.index;

  return ListTile(
    contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
    leading: Icon(
      item.icon,
      color: isSelected ? const Color(0xFF6C5DD3) : const Color(0xFF8E8E93),
      size: 22,
    ),
    title: Row(
      children: [
        Text(
          item.title,
          style: TextStyle(
            color:
                isSelected ? const Color(0xFF6C5DD3) : const Color(0xFF3A3A3C),
            fontSize: 15,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
        if (item.hasSubItems) ...[
          const Spacer(),
          Icon(Icons.chevron_right, size: 20, color: Colors.grey[400]),
        ],
        if (item.isHot) ...[
          const SizedBox(width: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
              color: const Color(0xFF1C1C1E),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Text(
              'Hot',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ],
    ),
    selected: isSelected,
    selectedTileColor: const Color(0xFFF1EDFD),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    onTap: () => onTap(item.index),
  );
}
