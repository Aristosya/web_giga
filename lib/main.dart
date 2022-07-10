import 'package:flutter/material.dart';
import 'route_generator.dart';

void main() {
  runApp(const MaterialApp(onGenerateRoute: RouteGenerator.generateRoute));
}
