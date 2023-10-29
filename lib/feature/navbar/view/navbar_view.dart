import 'package:flutter/material.dart';
import 'package:modular_localization/app/l10n/gen/app_localizations.dart';
import 'package:modular_localization/app/widgets/leading_items.dart';
import 'package:module1/view/module1_view.dart';
import 'package:module2/view/module2_view.dart';

class NavbarView extends StatefulWidget {
  const NavbarView({super.key});

  @override
  State<NavbarView> createState() => _NavbarViewState();
}

class _NavbarViewState extends State<NavbarView> {
  int _selectedIndex = 0;

  final _routes = [
    const Module1View(actions: LeadingItems()),
    const Module2View(actions: LeadingItems()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _routes.elementAt(_selectedIndex),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) => setState(() => _selectedIndex = index),
        selectedIndex: _selectedIndex,
        destinations: [
          NavigationDestination(
            icon: const Icon(Icons.one_k),
            label: AppLocalizations.of(context).navbarDestination1,
          ),
          NavigationDestination(
            icon: const Icon(Icons.two_k),
            label: AppLocalizations.of(context).navbarDestination2,
          ),
        ],
      ),
    );
  }
}
