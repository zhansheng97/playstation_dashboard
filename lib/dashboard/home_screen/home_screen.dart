import 'package:flutter/material.dart';
import 'package:playstation_dashboard/constants.dart';
import 'package:playstation_dashboard/dashboard/dashboard_section/dashboard_section.dart';
import 'package:playstation_dashboard/dashboard/search_bar_section/search_field_and_icon_button.dart';
import 'package:playstation_dashboard/dashboard/side_menu_section/side_menu.dart';
import 'package:playstation_dashboard/dashboard/social_section/social_section.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bool tablet = MediaQuery.of(context).size.width < 1000;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: (!tablet)
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SideMenu(),
                    Expanded(
                      child: Column(
                        children: [
                          SearchFieldAndIconButton(),
                          Padding(
                            padding: const EdgeInsets.all(kDefaultPadding),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: DashboardSection(),
                                ),
                                const SizedBox(width: kDefaultPadding * 2),
                                SocialSection(),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              : Column(
                  children: [
                    SearchFieldAndIconButton(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: Column(
                        children: [
                          DashboardSection(),
                          const SizedBox(height: kDefaultPadding),
                          SocialSection(),
                          const SizedBox(height: kDefaultPadding),
                        ],
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
