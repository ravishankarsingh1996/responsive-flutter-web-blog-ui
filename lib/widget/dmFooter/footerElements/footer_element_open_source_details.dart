import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import 'package:responsive_flutter_web_blog_ui/utils/color_utils.dart';

class FooterElementOpenSourceDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
//            Icon(
//              FontAwesomeIcons.github,
//              color: ColorUtils.colorBlack,
//            ),
//            SizedBox(width: 5,),
                Text(
                  'Github',
                  style: TextStyle(color: ColorUtils.colorBlack, fontSize: 15, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
//            js.context.callMethod("open", ["https://github.com/devmins-code"]);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'DevMins OpenSource',
                style: TextStyle(color: ColorUtils.colorBlack),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
//            js.context.callMethod("open", ["https://github.com/ravishankarsingh1996"]);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Ravi Shankar Singh',
                style: TextStyle(color: ColorUtils.colorBlack),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
//            js.context.callMethod("open", ["https://github.com/nishantml"]);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Nishant Bhushan',
                style: TextStyle(color: ColorUtils.colorBlack),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
