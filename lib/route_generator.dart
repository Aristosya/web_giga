import 'package:flutter/material.dart';
import 'package:web_giga/pages/about_page.dart';
import 'package:web_giga/pages/design_page.dart';
import 'package:web_giga/pages/projects_page.dart';
import 'pages/home_page.dart';
import 'pages/error_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(dynamic settings) {
    if (settings.name == '/') {
      return MaterialPageRoute(builder: (context) {
        return const HomePage();
      });
    }
    if (settings.name == DesignPage.routeName) {
      return MaterialPageRoute(builder: (context) {
        return const DesignPage();
      });
    }
    if (settings.name == ProjectsPage.routeName) {
      return MaterialPageRoute(builder: (context) {
        return const ProjectsPage();
      });
    }
    if (settings.name == AboutPage.routeName) {
      return MaterialPageRoute(builder: (context) {
        return const AboutPage();
      });
    }
    return MaterialPageRoute(builder: (context) => const ErrorPage());
  }
}



class HeroDialogRoute<T> extends PageRoute<T> {
  HeroDialogRoute({
    required WidgetBuilder builder,
    RouteSettings? settings,
    bool fullscreenDialog = true,
  })  : _builder = builder,
        super(settings: settings, fullscreenDialog: fullscreenDialog);

  final WidgetBuilder _builder;

  @override
  bool get opaque => false;

  @override
  bool get barrierDismissible => true;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 300);

  @override
  bool get maintainState => true;

  @override
  Color get barrierColor => Colors.black87;

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return child;
  }

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return _builder(context);
  }

  @override
  String get barrierLabel => 'Popup dialog open';
}