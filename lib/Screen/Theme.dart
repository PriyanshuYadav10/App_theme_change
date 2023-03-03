import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

import '../Provider/Themechangerprovider.dart';

class ThemeChange extends StatefulWidget {
  const ThemeChange({super.key});

  @override
  State<ThemeChange> createState() => _ThemeChangeState();
}

class _ThemeChangeState extends State<ThemeChange> {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Theme'),
      ),
      body: Column(children: [
        RadioListTile<ThemeMode>(
          title: Text('Light Mode'),
          value: ThemeMode.light,
          groupValue: themeChanger.themeMode,
          onChanged: themeChanger.setTheme,
        ),
        RadioListTile<ThemeMode>(
          title: Text('Dark Mode'),
          value: ThemeMode.dark,
          groupValue: themeChanger.themeMode,
          onChanged: themeChanger.setTheme,
        ),
        RadioListTile<ThemeMode>(
          title: Text('System Mode'),
          value: ThemeMode.system,
          groupValue: themeChanger.themeMode,
          onChanged: themeChanger.setTheme,
        ),
      ]),
    );
  }
}
