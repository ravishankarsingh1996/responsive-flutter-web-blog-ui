import 'package:flutter/material.dart';
import 'package:responsive_flutter_web_blog_ui/pages/home_page.dart';
import 'package:responsive_flutter_web_blog_ui/pages/post_detail_page.dart';
import 'package:responsive_flutter_web_blog_ui/routes.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, widget) => ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, widget),
          maxWidth: 1200,
          minWidth: 450,
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint(breakpoint: 450, name: MOBILE),
            ResponsiveBreakpoint(
                breakpoint: 600, name: TABLET, autoScale: true),
            ResponsiveBreakpoint(
                breakpoint: 800, name: TABLET, autoScale: false),
            ResponsiveBreakpoint(breakpoint: 1000, name: DESKTOP),
            ResponsiveBreakpoint(breakpoint: 1200, name: "4K", autoScale: true),
          ],
          background: Container(color: Color(0xFFF5F5F5))),
      initialRoute: Routes.home,
      onGenerateRoute: (RouteSettings settings) {
        return Routes.launch(settings, (context) {
          switch (settings.name) {
            case Routes.home:
              return HomePage();
              break;
            case Routes.blogPost:
              return PostDetailPage();
              break;
            default:
              return null;
              break;
          }
        });
      },
    );
  }
}
