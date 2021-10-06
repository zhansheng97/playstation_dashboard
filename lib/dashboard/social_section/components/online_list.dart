import 'package:flutter/material.dart';
import 'package:playstation_dashboard/constants.dart';
import 'package:playstation_dashboard/dashboard/social_section/components/social_list_item.dart';
import 'package:playstation_dashboard/dashboard/social_section/components/social_title.dart';

class OnlineList extends StatelessWidget {
  const OnlineList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialTitle(
          title: "Online",
          number: 3,
        ),
        const SizedBox(height: kDefaultPadding),
        SocialListItem(
          image: "assets/images/cyberpunk.jpg",
          title: "Bogfather",
          subtitle: "Playing Cyberpunk",
          onTap: () {},
        ),
        SocialListItem(
          image: "assets/images/overwatch.jpg",
          title: "Mr Jam",
          subtitle: "Playing Overwatch",
          onTap: () {},
        ),
        SocialListItem(
          image: "assets/images/rachet_clank.PNG",
          title: "GhostToast",
          subtitle: "Watching Netflix",
          onTap: () {},
        ),
      ],
    );
  }
}
