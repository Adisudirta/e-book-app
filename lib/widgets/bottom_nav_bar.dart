import 'package:e_book_app/themes.dart';
import 'package:flutter/material.dart';
import 'package:tabler_icons/tabler_icons.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(TablerIcons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
            icon: Icon(TablerIcons.bookmark), label: "Bookmark"),
        BottomNavigationBarItem(
            icon: Icon(TablerIcons.shopping_bag), label: "Basket"),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined), label: "Profile"),
      ],
      unselectedItemColor: greyColor,
      selectedItemColor: blackColor2,
    );
    ;
  }
}
