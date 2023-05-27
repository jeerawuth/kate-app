import 'package:flutter/material.dart';
import 'package:kate_app/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void toggleTheme(BuildContext context, ThemeData newTheme) {
    ThemeProvider themeProvider =
        Provider.of<ThemeProvider>(context, listen: false);
    themeProvider.setTheme(newTheme);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(),
          TextButton(
            onPressed: () {
              toggleTheme(context, ThemeData.dark());
            },
            child: const Text('Dark', style: TextStyle(fontSize: 20)),
          ),
          TextButton(
            onPressed: () {
              toggleTheme(context, ThemeData.light());
            },
            child: const Text('Light', style: TextStyle(fontSize: 20)),
          ),
          Container(),
        ],
      ),
    ));
  }
}
