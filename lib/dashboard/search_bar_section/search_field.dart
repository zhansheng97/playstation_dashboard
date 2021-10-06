import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:playstation_dashboard/constants.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: kTextFieldBackgroundColor,
        filled: true,
        hintText: "Search...",
        hintStyle: TextStyle(
          color: kTextColor,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.fromLTRB(
            kDefaultPadding,
            kDefaultPadding / 2,
            kDefaultPadding,
            kDefaultPadding / 2,
          ),
          child: SvgPicture.asset(
            "assets/icons/search.svg",
            color: kTextColor,
          ),
        ),
      ),
    );
  }
}
