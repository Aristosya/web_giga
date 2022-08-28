import 'package:flutter/material.dart';
import 'route_generator.dart';

void main() {
  runApp(
    MaterialApp(
      onGenerateRoute: RouteGenerator.generateRoute,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          unselectedWidgetColor: Colors.white,
          expansionTileTheme: ExpansionTileThemeData(
            iconColor: Colors.white,
            collapsedIconColor: Colors.white,
          ),
      ),
    ),
  );
}
