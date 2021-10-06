import 'package:flutter/material.dart';
import 'package:playstation_dashboard/constants.dart';

class MostPlayGameAndDottedLine extends StatelessWidget {
  const MostPlayGameAndDottedLine({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Most played games",
          style: Theme.of(context).textTheme.headline6,
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 3),
              width: 20,
              height: 5,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 3),
              width: 15,
              height: 5,
              decoration: BoxDecoration(
                color: kTextField2BackgroundColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 3),
              width: 15,
              height: 5,
              decoration: BoxDecoration(
                color: kTextField2BackgroundColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ],
        )
      ],
    );
  }
}
