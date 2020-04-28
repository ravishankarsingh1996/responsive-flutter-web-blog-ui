import 'package:flutter/material.dart';
import 'package:responsive_flutter_web_blog_ui/utils/style_utils.dart';
import 'package:responsive_flutter_web_blog_ui/widget/dmFooter/dm_footer.dart';
import 'package:responsive_flutter_web_blog_ui/widget/dm_carousel_widget.dart';

import 'blog_list_vertical.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

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
                    Divider(color: Color(0xFFEEEEEE), thickness: 1),
                    kIsWeb ? DMFooterWidget() : Container()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: <Widget>[
          !kIsWeb
              ? IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          )
              : Container(),
          kIsWeb
              ? Wrap(
            children: <Widget>[
              FlatButton(
                onPressed: () => Navigator.popUntil(context,
                    ModalRoute.withName(Navigator.defaultRouteName)),
                child: Text(
                  "HOME",
                  style: buttonTextStyle,
                ),
                splashColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  "ABOUT",
                  style: buttonTextStyle,
                ),
                splashColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  "CONTACT",
                  style: buttonTextStyle,
                ),
                splashColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
            ],
          )
              : Container(),
        ],
        title: Image.network(
          'https://community.devmins.com/graphics/white-logo-Artboard-1-copy-9.png',
          height: 50,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
