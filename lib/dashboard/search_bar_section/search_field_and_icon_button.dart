import 'package:flutter/material.dart';
import 'package:playstation_dashboard/constants.dart';
import 'package:playstation_dashboard/dashboard/search_bar_section/custom_icon_button.dart';
import 'package:playstation_dashboard/dashboard/search_bar_section/search_field.dart';
import 'package:playstation_dashboard/dashboard/side_menu_section/side_menu.dart';

class SearchFieldAndIconButton extends StatelessWidget {
  const SearchFieldAndIconButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool tablet = MediaQuery.of(context).size.width < 1000;
    final bool mobile = MediaQuery.of(context).size.width < 600;

    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: [
          if (tablet)
            Row(
              children: [
                IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    onPressed: () {}),
                const SizedBox(width: kDefaultPadding),
                PlayStationLogo(),
                const SizedBox(width: kDefaultPadding),
              ],
            ),
          if (mobile) Spacer(),
          if (!mobile)
            Expanded(
              child: SearchField(),
            ),
          if (!tablet) Spacer(),
          const SizedBox(width: kDefaultPadding),
          CustomIconButton(svgSrc: "assets/icons/bell.svg"),
          const SizedBox(width: kDefaultPadding),
          CustomIconButton(svgSrc: "assets/icons/shopping-cart.svg"),
          const SizedBox(width: kDefaultPadding),
          if (MediaQuery.of(context).size.width > 370)
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage("assets/images/cyberpunk.jpg"),
            )
        ],
      ),
    );
  }
}
