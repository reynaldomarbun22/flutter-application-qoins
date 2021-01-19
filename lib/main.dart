import 'package:flutter/material.dart';
import 'package:flutter_application_qoin/core/router.dart';
import 'package:flutter_application_qoin/login/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ISTStyle _style = new ISTStyle();
    // GlobalKey<NavigatorState> _state;

    return MaterialApp(
      // navigatorKey: _state,
      debugShowCheckedModeBanner: false,
      title: 'Qoin',
      home: LoginPage(),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
