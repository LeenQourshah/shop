import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/providers/theme_provider.dart';
import 'package:shop/screens/purchased_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  // late bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Consumer<themeProvider>(
        builder: (context, themeProvider, child) => SwitchListTile(
          title:
              Text('Theme', style: themeProvider.newText ? newStyle : oldStyle),
          value: themeProvider.newText,
          onChanged: (value) {
            themeProvider.toggleTheme();
          },
        ),
      ),
    ]);
  }
}
