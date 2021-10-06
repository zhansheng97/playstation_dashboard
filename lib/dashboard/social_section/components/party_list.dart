import 'package:flutter/material.dart';
import 'package:playstation_dashboard/constants.dart';
import 'package:playstation_dashboard/dashboard/social_section/components/social_list_item.dart';
import 'package:playstation_dashboard/dashboard/social_section/components/social_title.dart';

class PartyList extends StatelessWidget {
  const PartyList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialTitle(
          title: "Parties",
          number: 3,
        ),
        const SizedBox(height: kDefaultPadding),
        SocialListItem(
          image: "assets/images/demon_soul.jpg",
          title: "Demon Soul",
          subtitle: "Flanking to the right",
          onTap: () {},
          isParty: true,
        ),
        SocialListItem(
          image: "assets/images/ghost_of_tsushima.jpg",
          title: "Ghost of Tsuhima",
          subtitle: "Elliott started a voice chat",
          onTap: () {},
          isParty: true,
        ),
        SocialListItem(
          image: "assets/images/rachet_clank.PNG",
          title: "GhostToast",
          subtitle: "Fancy a spook?",
          onTap: () {},
          isParty: true,
        ),
      ],
    );
  }
}
