
import 'package:flutter/cupertino.dart';

class Routes{
  static const String home = '/';
  static const String blogPost = 'blog-post';

  static  Route<T> launch<T>(RouteSettings settings, WidgetBuilder page){
    return PageRouteBuilder<T>(
      settings: settings,
      pageBuilder: (context, animation, secondaryAnimation) => page(context),
    );
  }
}