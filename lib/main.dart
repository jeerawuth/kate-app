import 'package:flutter/material.dart';
import 'package:kate_app/providers/theme_provider.dart';
import 'package:kate_app/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, _) {
        return MaterialApp(
          title: 'Theme Demo',
          theme: themeProvider.getTheme(), // Use the current theme
          home: const HomeScreen(),
        );
      },
    );
  }
}
