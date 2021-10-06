import 'package:flutter/material.dart';
import 'package:playstation_dashboard/constants.dart';
import 'package:playstation_dashboard/dashboard/social_section/components/online_list.dart';
import 'package:playstation_dashboard/dashboard/social_section/components/party_list.dart';
import 'package:playstation_dashboard/dashboard/social_section/components/social_small_card.dart';
import 'package:playstation_dashboard/dashboard/social_section/components/social_title_and_drop_down_button.dart';

class SocialSection extends StatelessWidget {
  const SocialSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool tablet = MediaQuery.of(context).size.width < 1000;

    return Container(
      width: tablet ? MediaQuery.of(context).size.width : 400,
      // height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.all(kDefaultPadding * 1.5),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            kTextField2BackgroundColor,
            kBigCardBackgroundColor,
          ],
          stops: [0, 0.2],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        border: Border.all(
          color: Colors.grey[700],
        ),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SocialTitleAndDropDownButton(),
          SocialSmallCard(),
          OnlineList(),
          const SizedBox(height: 20),
          PartyList()
        ],
      ),
    );
  }
}
