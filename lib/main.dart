import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Provider/Themechangerprovider.dart';
import 'Screen/Theme.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeChanger(),
        ),
      ],
      child: Builder(builder: (context) {
        final themeChanger = Provider.of<ThemeChanger>(context);
        return MaterialApp(
          title: '',
          themeMode: themeChanger.themeMode,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.teal,
            fontFamily: 'Sarabun',
            brightness: Brightness.light,
          ),
          darkTheme: ThemeData(
            appBarTheme: const AppBarTheme(backgroundColor: Colors.teal),
            brightness: Brightness.dark,
          ),
          home: ThemeChange(),
        );
      }),
    );
  }
}
