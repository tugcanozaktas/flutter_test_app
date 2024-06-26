import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_drive/components/Home%20Page/Login%20Page/login_or_register.dart';
import 'package:test_drive/themes/theme_provider.dart';

void main() async {
  return runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginOrRegister(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
