import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../util/router.dart';

class LayoutTemplate extends StatefulWidget {
  const LayoutTemplate({Key? key, this.child}) : super(key: key);

  final Widget? child;

  @override
  State<LayoutTemplate> createState() => _LayoutTemplateState();
}

class _LayoutTemplateState extends State<LayoutTemplate> {
  int _selectedIndex = 0;

  final _barItems = [
    NavItem(
      url: Routes.home.value,
      icon: Icons.home,
      label: "Home",
    ),
    NavItem(
      url: Routes.details.value,
      icon: Icons.settings,
      label: "Settings",
    ),
  ];

  Null Function(int index) _onItemTapped(BuildContext context) {
    return (index) {
      final barItem = _barItems[index];

      context.go(barItem.url);
      setState(() {
        _selectedIndex = index;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: widget.child,
        bottomNavigationBar: BottomNavigationBar(
          items: _barItems
              .map(
                (item) => BottomNavigationBarItem(
                  icon: Icon(item.icon),
                  label: item.label,
                ),
              )
              .toList(),
          onTap: _onItemTapped(context),
          currentIndex: _selectedIndex,
        ));
  }
}

class NavItem {
  const NavItem({required this.url, required this.icon, required this.label});

  final IconData icon;
  final String label;
  final String url;
}
