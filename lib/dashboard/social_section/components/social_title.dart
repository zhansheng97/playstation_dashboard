import 'package:flutter/material.dart';
import 'package:playstation_dashboard/constants.dart';

class SocialTitle extends StatelessWidget {
  final String title;
  final int number;

  const SocialTitle({
    Key key,
    @required this.title,
    @required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title.toUpperCase(),
          style: TextStyle(
            color: kTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "•".toUpperCase(),
          style: TextStyle(color: kTextColor, fontSize: 10),
        ),
        Text(
          "$number".toUpperCase(),
          style: TextStyle(
            color: kTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
