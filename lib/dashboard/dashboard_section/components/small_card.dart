import 'package:flutter/material.dart';
import 'package:playstation_dashboard/constants.dart';

class SmallCard extends StatelessWidget {
  final String image;
  final String title;
  final String hoursPlayed;
  const SmallCard({
    Key key,
    @required this.image,
    @required this.title,
    @required this.hoursPlayed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image.asset(
              image,
              height: 135,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: kDefaultPadding / 2),
          Text(
            title,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            "$hoursPlayed hrs",
            style: TextStyle(fontSize: 8.0, color: kTextColor),
          ),
        ],
      ),
    );
  }
}
