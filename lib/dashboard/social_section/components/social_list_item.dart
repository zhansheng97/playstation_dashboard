import 'package:flutter/material.dart';
import 'package:playstation_dashboard/constants.dart';

class SocialListItem extends StatelessWidget {
  final String image, title, subtitle;
  final bool isParty;
  final VoidCallback onTap;

  const SocialListItem({
    Key key,
    @required this.image,
    @required this.title,
    @required this.subtitle,
    this.isParty = false,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: Colors.transparent,
        hoverColor: Colors.white.withOpacity(0.2),
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  image,
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: kDefaultPadding),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.grey[350],
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      subtitle,
                      style: TextStyle(color: kTextColor, fontSize: 12.0),
                    ),
                  ],
                ),
              ),
              if (isParty)
                Container(
                  // color: Colors.red,
                  width: 70,
                  child: Stack(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/images/rachet_clank.PNG"),
                              fit: BoxFit.cover),
                          border: Border.all(
                            color: kDarkBackgroundColor,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/images/overwatch.jpg"),
                                fit: BoxFit.cover),
                            border: Border.all(
                              color: kDarkBackgroundColor,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 40,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF777686),
                            border: Border.all(
                              color: kDarkBackgroundColor,
                            ),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "+2",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
