import 'package:flutter/material.dart';
import 'package:playstation_dashboard/constants.dart';
import 'package:playstation_dashboard/dashboard/dashboard_section/components/most_play_games_and_dotted_line.dart';
import 'package:playstation_dashboard/dashboard/dashboard_section/components/small_card.dart';

class MostPlayedGamesSection extends StatelessWidget {
  const MostPlayedGamesSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: MostPlayGameAndDottedLine(),
        ),
        Row(
          children: [
            Expanded(
              child: SmallCard(
                image: "assets/images/ghost_of_tsushima.jpg",
                title: "Ghost of Tsushima",
                hoursPlayed: "112",
              ),
            ),
            const SizedBox(width: kDefaultPadding),
            Expanded(
              child: SmallCard(
                image: "assets/images/horizon_zero_dawn.jpg",
                title: "Horizon Zero Dawn",
                hoursPlayed: "68",
              ),
            ),
            const SizedBox(width: kDefaultPadding),
            Expanded(
              child: SmallCard(
                image: "assets/images/rachet_clank.PNG",
                title: "Ratchet and Clank",
                hoursPlayed: "35",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
