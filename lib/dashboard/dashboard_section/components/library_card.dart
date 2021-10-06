import 'package:flutter/material.dart';
import 'package:playstation_dashboard/constants.dart';
import 'package:playstation_dashboard/dashboard/dashboard_section/components/library_list_tile.dart';

class LibraryCard extends StatelessWidget {
  const LibraryCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: kBigCardBackgroundColor,
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
                "Library",
                style: Theme.of(context).textTheme.headline6,
              ),
              Icon(
                Icons.arrow_forward,
                color: kTextColor,
              ),
            ],
          ),
          const SizedBox(height: kDefaultPadding),
          LibraryListTile(
            image: "assets/images/cyberpunk.jpg",
            title: "Cyberpunk",
            category: "PS4 & PS5",
            date: "12 Dec",
            year: "2020",
            onTap: () {},
          ),
          LibraryListTile(
            image: "assets/images/demon_soul.jpg",
            title: "Demon's Souls",
            category: "PS5",
            date: "14 Nov",
            year: "2020",
            onTap: () {},
          ),
          LibraryListTile(
            image: "assets/images/overwatch.jpg",
            title: "Overwatch",
            category: "PS4",
            date: "20 Oct",
            year: "2020",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
