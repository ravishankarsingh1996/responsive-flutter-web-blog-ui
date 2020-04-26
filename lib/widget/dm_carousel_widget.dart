import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter_web_blog_ui/utils/color_utils.dart';

import 'package:flutter/foundation.dart' show kIsWeb;

class DMCarouselWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: kIsWeb ? 400: 200 ,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(right: 0, top: 20, left: 0),
      child: Card(
        shape: RoundedRectangleBorder(),
        color: Colors.white,
        elevation: 20,
        shadowColor: Colors.grey,
        child: CarouselWidget(),
      ),
    );
  }
}

class CarouselWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              color: ColorUtils.colorBlueGrey,
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          child: Carousel(
            borderRadius: false,
            boxFit: BoxFit.cover,
            autoplayDuration: Duration(seconds: 5),
            images: [
              NetworkImage(
                'https://images.unsplash.com/photo-1524659880556-209ccc3bbba5?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80',
              ),
              NetworkImage(
                'https://images.unsplash.com/photo-1587579484426-aa19f6878876?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
              ),
              NetworkImage(
                'https://images.unsplash.com/photo-1579484955380-8859fccd3d8b?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80',
              ),
              NetworkImage(
                'https://images.unsplash.com/photo-1581309638082-877cb8132535?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80',
              ),
            ],
            autoplay: true,
            animationCurve: Curves.fastOutSlowIn,
            animationDuration: Duration(milliseconds: 1000),
            dotSize: 6.0,
            indicatorBgPadding: 2.0,
          ),
        ),
        Container(
          height: double.maxFinite,
          width: double.maxFinite,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                ColorUtils.colorGradient1,
                ColorUtils.colorGradient2,
                ColorUtils.colorGradient1,
              ])),
        ),
        Positioned(
          top: 15,
          left: 0,
          right: kIsWeb ? null : 150,
          child: Container(
              padding:
              EdgeInsets.only(left: 30, top: 10, bottom: 10, right: 20),
              decoration: BoxDecoration(
                  color: ColorUtils.colorBlueGrey,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              child: Text(
                'A New Way Of Technical Blogging',
                style:
                TextStyle(color: ColorUtils.colorWhite, fontSize: 15),
              )),
        ),
        Positioned(
          bottom: 30,
          left: 30,
          child: Row(
            children: <Widget>[
              Container(
                color: ColorUtils.colorWhite,
                height: 1,
                width: MediaQuery.of(context).size.width * 0.2,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'DevMins',
                style:
                TextStyle(color: ColorUtils.colorWhite, fontSize: 25),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
