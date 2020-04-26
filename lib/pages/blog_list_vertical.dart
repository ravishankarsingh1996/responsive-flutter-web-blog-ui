import 'package:flutter/material.dart';
import 'package:responsive_flutter_web_blog_ui/widget/dm_blog_post_card.dart';


class BlogListWidget extends StatefulWidget {
  @override
  _BlogListWidgetState createState() => _BlogListWidgetState();
}

class _BlogListWidgetState extends State<BlogListWidget> {

// TODO Replace with object model.
  String listItemTitleText = "Adobe XD Design to Flutter Code | Flutter";
  String listItemPreviewText =
      "Hey everyone, today I found an awesome plugin that lets you generate flutter code from your XD design. Yes, you heard it right we will be generating flutter code using Adobe XD. Isn’t it awesome? "
      "So let's get started and know more about this plugin, without wasting time."
      "At first, I will like to thanks 🎊 the creator of this plugin 👨🏻‍💻 Giovani Lobato and request him to add more flexibility to this plugin. You can check out this opensource plugin made by Giovani Lobato on GitHub.[…]";


  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
          minHeight: 10, maxHeight: double.infinity),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return DmBlogPostCard(
              imageUrl:
              "https://miro.medium.com/max/1400/1*IH3OuU2Tr9lBdCl76JPGUQ@2x.png",
              title: listItemTitleText,
              shortDescription: listItemPreviewText,
              postTag: 'Trending',
            publisherImageUrl: 'https://avatars2.githubusercontent.com/u/20386271?s=400&u=f323c0d5aca3da5eaecc183a3cf6abff6002df21&v=4',
            publisherName: 'Ravi Singh',
          );
        },
        itemCount: 30,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
      ),
    );
  }
}
