import 'package:flutter/material.dart';

Widget buildTab(BuildContext context, String title, String selectedTab,
    Function(String) onTap) {
  bool isSelected = selectedTab == title;

  return GestureDetector(
    child: AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: isSelected ? 3 : 0,
            color: isSelected
                ? Theme.of(context).colorScheme.secondary
                : Colors.transparent,
          ),
        ),
      ),
      child: AnimatedDefaultTextStyle(
        duration: const Duration(milliseconds: 300),
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: isSelected
              ? Theme.of(context).colorScheme.secondary
              : Theme.of(context).colorScheme.inversePrimary,
        ),
        child: Text(title),
      ),
    ),
    onTap: () {
      onTap(title);
    },
  );
}
