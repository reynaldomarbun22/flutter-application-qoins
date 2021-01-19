import 'package:flutter/material.dart';
import 'package:flutter_application_qoin/home/home.dart';
import 'package:flutter_application_qoin/login/login.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case LoginPage.routeName:
        return MaterialPageRoute(
            settings: RouteSettings(name: LoginPage.routeName),
            builder: (_) => LoginPage());
      case HomePage.routeName:
        return MaterialPageRoute(
            settings: RouteSettings(name: HomePage.routeName),
            builder: (_) => HomePage());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
