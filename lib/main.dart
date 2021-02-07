import 'package:flutter/material.dart';
import 'login_page/loginpage.dart';
import 'bottom_navigation/bottom_navigation.dart';
import 'map/map.dart';
import 'profile_page/profile_page.dart';
import 'config/sizeConfig.dart';
import 'package:firebase_core/firebase_core.dart';


GlobalKey<NavigatorState> mainNavigatorKey = GlobalKey<NavigatorState>();
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
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
                fontFamily: 'Pragmatica',
                primarySwatch: Colors.blue,
                visualDensity: VisualDensity.adaptivePlatformDensity,
              ),
              navigatorKey: mainNavigatorKey,
              
              home: LoginUser(),
            );
          },
        );
      },
    );
  }
}


            