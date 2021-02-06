import 'package:flutter/material.dart';
import 'login_page/login01.dart';
import 'bottom_navigation/bottom_navigation.dart';
import 'map/map.dart';
import 'profile_page/profile_page.dart';
import 'config/sizeConfig.dart';


GlobalKey<NavigatorState> mainNavigatorKey = GlobalKey<NavigatorState>();
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(
                primarySwatch: Colors.blue,
                visualDensity: VisualDensity.adaptivePlatformDensity,
              ),
              navigatorKey: mainNavigatorKey,
              home: Home(),
            );
          },
        );
      },
    );
  }
}


            