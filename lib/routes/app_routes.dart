import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/employeurs_screen/employeurs_screen.dart';
import '../presentation/fournisseurs_screen/fournisseurs_screen.dart';
import '../presentation/home_screen/home_screen.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/page_de_garde_screen/page_de_garde_screen.dart';

class AppRoutes {
  static const String pageDeGardeScreen = '/page_de_garde_screen';

  static const String loginScreen = '/login_screen';

  static const String homeScreen = '/home_screen';

  static const String fournisseursScreen = '/fournisseurs_screen';

  static const String employeursScreen = '/employeurs_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        pageDeGardeScreen: PageDeGardeScreen.builder,
        loginScreen: LoginScreen.builder,
        homeScreen: HomeScreen.builder,
        fournisseursScreen: FournisseursScreen.builder,
        employeursScreen: EmployeursScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: PageDeGardeScreen.builder
      };
}
