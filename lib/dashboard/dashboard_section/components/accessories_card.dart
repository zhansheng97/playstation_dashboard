import 'package:flutter/material.dart';
import 'package:playstation_dashboard/constants.dart';

class AccessoriesCard extends StatelessWidget {
  const AccessoriesCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      // height: 180,
      decoration: BoxDecoration(
        color: kBigCardBackgroundColor,
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(
          color: Colors.grey[700],
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Accessories",
                style: Theme.of(context).textTheme.headline6,
              ),
              Icon(
                Icons.arrow_forward,
                color: kTextColor,
              ),
            ],
          ),
          const SizedBox(height: kDefaultPadding),
          Expanded(
            child: Stack(
              children: [
                ClipPath(
                  clipper: _CustomAccessoriesClipper(),
                  child: Container(
                    color: Color(0xFF373A44),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/images/headset.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CustomAccessoriesClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..moveTo(0, size.height * 0.5 + 20)
      ..lineTo(0, size.height - 20)
      ..quadraticBezierTo(0, size.height, 20, size.height)
      ..lineTo(size.width - 20, size.height * 0.5)
      ..quadraticBezierTo(
          size.width, size.height * 0.45, size.width, size.height * 0.5 - 20)
      ..lineTo(size.width, 20)
      ..quadraticBezierTo(size.width, 0, size.width - 20, 0)
      ..lineTo(20, size.height * 0.5)
      ..quadraticBezierTo(0, size.height * 0.55, 0, size.height * 0.5 + 20)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
