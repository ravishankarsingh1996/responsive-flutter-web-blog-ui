import 'package:flutter/material.dart';

import 'footerElements/footer_element_company_detail.dart';
import 'footerElements/footer_element_connect_with_section.dart';
import 'footerElements/footer_element_open_source_details.dart';

class DMFooterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var crossAxisCount = 3;
    if(screenSize.width<= 800){
      crossAxisCount = 1;
    }
    return Container(
        margin: EdgeInsets.only(bottom: 50, left: 30, right: 30, top: 20),
        constraints: BoxConstraints(minHeight: 100, maxHeight: double.infinity),
        child: GridView(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: crossAxisCount,childAspectRatio: 0.99999 ),
          physics: AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          children: <Widget>[
            FooterElementCompanyDetails(),
            FooterElementOpenSourceDetails(),
            FooterElementConnectWithSection(),
          ],
        )
    );
  }
}
