import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:routes/routes/home_page.dart';
import 'package:routes/routes/random_page.dart';

class RouteGenerator {
  static const String homePage = '/';
  static const String randomPage = '/random';

  RouteGenerator._();
  static Route<dynamic> generateRoute(settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(
          builder: (_) => HomePage(),
        );
      case randomPage:
        return MaterialPageRoute(
          builder: (_) => RandomPage(),
        );
      default:
        throw FormatException("Route not found");
    }
  }
}

class RouteException implements Exception {
  final String message;
  const RouteException(this.message);
}

// return PageRouteBuilder(
//     transitionDuration: Duration(milliseconds: 1000),
//     transitionsBuilder: (BuildContext context,
//         Animation<double> animation,
//         Animation<double> secAnimation,
//         Widget child) {
//       return FadeTransition(opacity: animation, child: child);
//     },
//     pageBuilder: (BuildContext context, Animation<double> animation,
//         Animation<double> secAnimation) {
//       return RandomPage();
//     });
