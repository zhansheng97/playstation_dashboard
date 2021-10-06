import 'package:flutter/material.dart';
import 'package:playstation_dashboard/constants.dart';
import 'package:playstation_dashboard/dashboard/dashboard_section/components/accessories_card.dart';
import 'package:playstation_dashboard/dashboard/dashboard_section/components/header_card.dart';
import 'package:playstation_dashboard/dashboard/dashboard_section/components/library_card.dart';
import 'package:playstation_dashboard/dashboard/dashboard_section/components/most_played_game_section.dart';

class DashboardSection extends StatelessWidget {
  const DashboardSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool desktop = MediaQuery.of(context).size.width >= 1200;
    final bool smallDesktop = MediaQuery.of(context).size.width < 1200;
    return Column(
      children: [
        HeaderCard(),
        MostPlayedGamesSection(),
        const SizedBox(height: kDefaultPadding),
        if (desktop)
          Container(
            height: 240,
            // color: Colors.yellow,
            child: Row(
              children: [
                Expanded(
                  child: AccessoriesCard(),
                ),
                const SizedBox(width: kDefaultPadding),
                Expanded(
                  flex: 2,
                  child: LibraryCard(),
                ),
              ],
            ),
          ),
        if (smallDesktop)
          Container(
            height: 520,
            child: Column(
              children: [
                Expanded(child: AccessoriesCard()),
                const SizedBox(height: kDefaultPadding),
                Expanded(child: LibraryCard()),
              ],
            ),
          ),
      ],
    );
  }
}
