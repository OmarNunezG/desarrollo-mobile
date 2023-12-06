import 'package:flutter/material.dart';
import 'package:lab_8/utils/my_colors.dart';

import 'pages/login/login_page.dart';
import 'pages/register/register_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(
        useMaterial3: false,
        colorScheme: ColorScheme.fromSeed(
          seedColor: MyColors.primaryColor,
          brightness: Brightness.light,
        ),
      ),
      initialRoute: 'login',
      routes: {
        'login': (context) => const LoginPage(),
        'register': (context) => const RegisterPage(),
      },
    );
  }
}
