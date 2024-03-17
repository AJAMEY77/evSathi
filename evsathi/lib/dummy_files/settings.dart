import 'package:flutter/material.dart';
import 'package:flutter_settings_ui/flutter_settings_ui.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: Text('General'),
            tiles: [
              SettingsTile.switchTile(
                title: Text('Dark Mode'),
                initialValue: _darkMode,
                onToggle: (value) {
                  setState(() {
                    _darkMode = value;
                  });
                },
              ),
               SettingsTile(title: Text("Languages")),
                SettingsTile(title: Text("Privacy and security")),
                 SettingsTile(title: Text("Terms & Conditions")),
              SettingsTile(title: Text("Help?")),
              // Add more settings options here
            ],
          ),
        ],
      ),
    );
  }
}
