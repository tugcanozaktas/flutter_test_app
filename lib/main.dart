// Flutter
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_drive/pages/login_page.dart';
import 'package:test_drive/pages/register_page.dart';
import 'package:test_drive/themes/theme_provider.dart';

void main() {
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
      home: LoginPage(onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const RegisterPage()));
      }),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
