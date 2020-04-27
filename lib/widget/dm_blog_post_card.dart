import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_flutter_web_blog_ui/utils/color_utils.dart';

import '../routes.dart';
import 'dm_read_more_button.dart';

class DmBlogPostCard extends StatelessWidget {

  final String imageUrl;
  final String title;
  final String shortDescription;
  final String publisherImageUrl;
  final String publisherName;
  final String postTag;

  const DmBlogPostCard({Key key, this.imageUrl, this.title, this.shortDescription, this.publisherImageUrl, this.publisherName, this.postTag = ''}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        imageUrl !=null ? Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 24),
              child: Image.network(
                imageUrl,
                width: width,
                height: size.width * 0.3,
                fit: BoxFit.fill,
              ),
            ),
            postTag.isNotEmpty ? Positioned(
              top: 40,
              right: 0,
              child: Container(
                padding: EdgeInsets.only(left: 15, top: 5, bottom: 5, right: 15),
                decoration: BoxDecoration(
                    color: ColorUtils.colorDeepOrange,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    )),
                child: Text(
                  'New',
                  style: TextStyle(color: ColorUtils.colorWhite, fontSize: 12),
                ),
              ),
            ): Container(),
          ],
        ) : Container(),
      Container(
        color: Colors.grey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(bottom: 12),
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 26,
                      color: ColorUtils.colorBlack,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.w300),
                ),
              ),
            ),
            shortDescription !=null ? Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(bottom: 12),
                child: Text(
                  shortDescription,
                  style: GoogleFonts.openSans(
                      textStyle: TextStyle(fontSize: 14, color: ColorUtils.colorBlack)),
                ),
              ),
            ): Container(),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(bottom: 12),
                child: DMReadMoreButton(
                  onPressed: () => Navigator.pushNamed(context, Routes.blogPost),
                ),
              ),
            )
          ],
        ),
      )
      ],
    );
  }
}
