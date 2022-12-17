import 'package:flutter/material.dart';

class BottomMenu extends StatelessWidget {
  final selectedIndex;
  ValueChanged<int> onClicked;
  BottomMenu({this.selectedIndex, required this.onClicked});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Stok',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.new_releases),
          label: 'Pelanggan',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.question_answer),
          label: 'Pengaturan',
        )
      ],
      currentIndex: selectedIndex,
      onTap: onClicked,
      selectedItemColor: Color(0xfff966be),
      backgroundColor: Colors.white,
      unselectedItemColor: Colors.grey,
    );
  }
}
