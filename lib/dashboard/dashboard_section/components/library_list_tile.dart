import 'package:flutter/material.dart';
import 'package:playstation_dashboard/constants.dart';

class LibraryListTile extends StatelessWidget {
  final String title, image, category, date, year;
  final VoidCallback onTap;

  const LibraryListTile({
    Key key,
    @required this.title,
    @required this.image,
    @required this.category,
    @required this.date,
    @required this.year,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset(
              image,
              height: 40,
              width: 40,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: kDefaultPadding),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[350],
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  category,
                  style: TextStyle(color: kTextColor, fontSize: 10.0),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  date,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: kTextColor,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  year,
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 10.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          if (MediaQuery.of(context).size.width > 400)
            Material(
              color: kBigCardBackgroundColor,
              borderRadius: BorderRadius.circular(10.0),
              child: InkWell(
                borderRadius: BorderRadius.circular(10.0),
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: kPrimaryColor),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Download",
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          if (MediaQuery.of(context).size.width <= 400)
            IconButton(
                icon: Icon(
                  Icons.file_download,
                  color: kPrimaryColor,
                ),
                onPressed: () {})
        ],
      ),
    );
  }
}
