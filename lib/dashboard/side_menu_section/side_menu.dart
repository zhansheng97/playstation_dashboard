import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:playstation_dashboard/constants.dart';

import '../search_bar_section/nav_item_list.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: MediaQuery.of(context).size.height,
      child: LayoutBuilder(
        builder: (context, constraints) {
          print(constraints.maxHeight);
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PlayStationLogo(),
                const SizedBox(height: 120),
                NavItemList(),
              ],
            ),
          );
        },
      ),
    );
  }
}

class PlayStationLogo extends StatelessWidget {
  const PlayStationLogo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: SvgPicture.asset(
        "assets/icons/playstation.svg",
        color: Colors.white,
      ),
    );
  }
}
