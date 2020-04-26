import 'package:flutter/material.dart';
import 'package:responsive_flutter_web_blog_ui/widget/dm_carousel_widget.dart';

import 'blog_list_vertical.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    DMCarouselWidget(),
                    BlogListWidget(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


