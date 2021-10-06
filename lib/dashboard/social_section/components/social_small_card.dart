import 'package:flutter/material.dart';
import 'package:playstation_dashboard/constants.dart';

class SocialSmallCard extends StatelessWidget {
  const SocialSmallCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      padding: EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 25,
      ),
      // height: 50,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF323540),
            Color(0xFF464953),
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
        borderRadius: BorderRadius.circular(22.0),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Rocket League update",
                  style: TextStyle(color: Colors.grey[350], fontSize: 16.0),
                ),
                const SizedBox(height: 5),
                Text(
                  "12 min remaining",
                  style: TextStyle(color: kTextColor, fontSize: 10),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.greenAccent,
                width: 2.0,
              ),
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: Text(
              "35%",
              style: TextStyle(color: Colors.greenAccent),
            ),
          ),
        ],
      ),
    );
  }
}
