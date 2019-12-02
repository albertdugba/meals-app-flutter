import 'package:flutter/material.dart';
import 'package:meals_app/screens/settings_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget _buildListTile(String text, IconData icon, Function tapHandler) {
    return ListTile(
        leading: Icon(icon, size: 26.0),
        title: Text(
          text,
          style: TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        onTap: tapHandler);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Center(
            child: Container(
              color: Theme.of(context).primaryColor,
              height: 220.0,
              width: double.infinity,
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.centerLeft,
              child: Text(
                'Renegades Recipes',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 30.0,
                    color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          _buildListTile('Meals', Icons.restaurant, () {
            Navigator.pushReplacementNamed(context, '/');
          }),
          _buildListTile('Settings', Icons.settings, () {
            Navigator.pushReplacementNamed(context, SettingsScreen.routeName);
          }),
        ],
      ),
    );
  }
}
