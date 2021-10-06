import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:playstation_dashboard/constants.dart';

class CustomIconButton extends StatelessWidget {
  final String svgSrc;

  const CustomIconButton({
    Key key,
    @required this.svgSrc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: kTextFieldBackgroundColor,
      borderRadius: BorderRadius.circular(50.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(50.0),
        onTap: () {},
        child: Container(
          height: 50,
          width: 50,
          alignment: Alignment.center,
          padding: EdgeInsets.all(kDefaultPadding / 1.5),
          child: SvgPicture.asset(
            svgSrc,
            color: kTextColor,
          ),
        ),
      ),
    );
  }
}
