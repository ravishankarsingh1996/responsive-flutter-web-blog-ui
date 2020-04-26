import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_flutter_web_blog_ui/utils/color_utils.dart';

class DMReadMoreButton extends StatelessWidget {
  final Function onPressed;

  const DMReadMoreButton({Key key,@required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool hover = false;
    return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return MouseRegion(
            onHover: (event) => setState(() => hover = true),
            onExit: (event) => setState(() => hover = false),
            child: OutlineButton(
              onPressed: onPressed,
              highlightedBorderColor: ColorUtils.colorBlack,
              hoverColor: ColorUtils.colorBlack,
              borderSide: BorderSide(color: ColorUtils.colorBlack, width: 2),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "READ...",
                style: GoogleFonts.openSans(
                  textStyle: TextStyle(
                      fontSize: 14,
                      color: hover ? Colors.white : ColorUtils.colorBlack,
                      letterSpacing: 1),
                ) ,
              ),
            ),
          );
        });
  }
}
