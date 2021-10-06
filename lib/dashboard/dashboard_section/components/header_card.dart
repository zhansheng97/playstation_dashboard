import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:playstation_dashboard/constants.dart';

class HeaderCard extends StatelessWidget {
  const HeaderCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30.0),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: ClipPath(
                  clipper: _HalfCircleClipper(),
                  child: Container(
                    height: 150,
                    width: 300,
                    color: Colors.orange[800],
                  ),
                ),
              ),
              ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 60, sigmaY: 60),
                  child: Container(
                    height: 220,
                    constraints: BoxConstraints(minWidth: 600),
                    decoration: BoxDecoration(
                      color: kBigCardBackgroundColor.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(30.0),
                      border: Border.all(color: Colors.grey[700]),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: -20,
          right: kDefaultPadding * 2,
          child: Image.asset(
            "assets/images/spider_man.png",
            height: 240,
          ),
        ),
        Positioned(
          bottom: kDefaultPadding,
          left: kDefaultPadding,
          child: SizedBox(
            width: 250,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(
                    kDefaultPadding / 2,
                  ),
                  decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Text(
                    "NEW",
                    style: Theme.of(context)
                        .textTheme
                        .caption
                        .copyWith(fontSize: 8.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    "Marvel's Spider-Man: Myles Morales",
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10.0, 5.0, 5.0, 5.0),
                  decoration: BoxDecoration(
                    color: kTextField2BackgroundColor,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$69.99",
                        style: TextStyle(
                          color: kTextColor,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15.0),
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Text(
                          "Purchase",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _HalfCircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..quadraticBezierTo(size.width / 2, size.height, size.width, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
