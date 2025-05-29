import 'package:flutter/material.dart';
import 'modules/auth/login_page.dart';
import 'modules/auth/signup_page.dart';
import 'modules/home/home_page.dart';
import 'modules/metas/metas_page.dart';
import 'modules/splash/splash_page.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => const SplashPage(),
  '/login': (context) => LoginPage(),
  '/signup': (context) => SignupPage(),
  '/home': (context) => const HomePage(),
  '/metas': (context) => const MetasPage(),
};
