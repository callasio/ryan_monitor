import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: <Widget>[
        NavigationRail(
          selectedIndex: _selectedIndex,
          labelType: NavigationRailLabelType.all,
          onDestinationSelected: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          destinations: const [
            NavigationRailDestination(
                icon: Icon(Icons.thermostat_outlined),
                selectedIcon: Icon(Icons.thermostat),
                label: Text('Temperature')),
            NavigationRailDestination(
                icon: Icon(Icons.thermostat_outlined),
                selectedIcon: Icon(Icons.thermostat),
                label: Text('Temperature')),
          ],
        )
      ],
    ));
  }
}
