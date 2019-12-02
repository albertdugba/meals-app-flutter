import 'package:flutter/material.dart';
import 'package:meals_app/widgets/main_drawer.dart';

class SettingsScreen extends StatelessWidget {
  static const String routeName = '/settings';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text('Welcome '),
      ),
    );
  }
}
