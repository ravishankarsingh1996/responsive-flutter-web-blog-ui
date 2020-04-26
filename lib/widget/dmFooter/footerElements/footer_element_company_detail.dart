import 'package:flutter/material.dart';
import 'package:responsive_flutter_web_blog_ui/utils/color_utils.dart';


class FooterElementCompanyDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(
              Icons.copyright,
              color: ColorUtils.colorBlack,
            ),
            SizedBox(width: 5,),
            Text(
              '2017-2020 Copyright',
              style: TextStyle(color: ColorUtils.colorBlack, fontSize: 15, fontWeight: FontWeight.bold),
            )
          ],
        ),
        SizedBox(height: 10,),
        Text(
          'DevMins Community',
          style: TextStyle(color: ColorUtils.colorBlack),
        ),
        SizedBox(height: 10,),
        Text(
          'Contact Us',
          style: TextStyle(color: ColorUtils.colorBlack),
        ),
        SizedBox(height: 10,),
        Text(
          'Privacy Policy',
          style: TextStyle(color: ColorUtils.colorBlack),
        ),
        SizedBox(height: 10,),
        Text(
          'Website Terms & Conditions',
          style: TextStyle(color: ColorUtils.colorBlack),
        ),
      ],
    );
  }
}
