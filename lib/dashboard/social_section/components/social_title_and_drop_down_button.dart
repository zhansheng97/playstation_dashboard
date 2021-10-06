import 'package:flutter/material.dart';
import 'package:playstation_dashboard/constants.dart';

class SocialTitleAndDropDownButton extends StatelessWidget {
  const SocialTitleAndDropDownButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Social",
          style:
              Theme.of(context).textTheme.headline6.copyWith(color: kTextColor),
        ),
        RotatedBox(
          quarterTurns: 1,
          child: Icon(
            Icons.arrow_forward_ios,
            color: kTextColor,
            size: 20,
          ),
        ),
      ],
    );
  }
}
