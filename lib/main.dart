import 'package:flutter/material.dart';
import 'package:playstation_dashboard/constants.dart';

import 'dashboard/home_screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: kDarkBackgroundColor,
        fontFamily: "Lato",
        textTheme: Theme.of(context)
            .textTheme
            .apply(
              fontFamily: "Lato",
              bodyColor: Colors.white,
              displayColor: Colors.white,
            )
            .copyWith(
              bodyText1: TextStyle(
                color: Colors.grey[350],
              ),
              headline6: TextStyle(
                color: Colors.grey[350],
              ),
            ),
      ),
      home: HomeScreen(),
    );
  }
}
