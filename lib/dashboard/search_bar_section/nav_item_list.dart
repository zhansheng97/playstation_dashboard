import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:playstation_dashboard/constants.dart';

class NavItemList extends StatefulWidget {
  @override
  _NavItemListState createState() => _NavItemListState();
}

class _NavItemListState extends State<NavItemList> {
  var currentIndex = 0;

  final List<String> menuItems = [
    "assets/icons/home.svg",
    "assets/icons/shopping-cart.svg",
    "assets/icons/tv.svg",
    "assets/icons/camera.svg",
    "assets/icons/pie-chart.svg",
    "assets/icons/user.svg",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
            menuItems.length,
            (index) => NavItem(
              isSelected: index == currentIndex,
              onTap: () {
                setState(() {
                  currentIndex = index;
                });
              },
              svgSrc: menuItems[index],
            ),
          ),
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  final String svgSrc;
  final bool isSelected;
  final VoidCallback onTap;

  const NavItem({
    Key key,
    @required this.svgSrc,
    @required this.onTap,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(kDefaultPadding / 1.5),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: isSelected ? kPrimaryColor : Colors.transparent,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: SvgPicture.asset(
              svgSrc,
              color: isSelected ? Colors.white : kTextColor,
            ),
          ),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(12.0),
                onTap: onTap,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
