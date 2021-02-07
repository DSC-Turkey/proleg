import 'package:flutter/material.dart';

class HomeNature extends StatefulWidget {
  final Widget child;

  HomeNature({Key key, this.child}) : super(key: key);

  _HomeNatureState createState() => _HomeNatureState();
}

class _HomeNatureState extends State<HomeNature> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          ImageContainer(),
      
        ],
      ),
    );
  }

  Widget ImageContainer() {
    return Container(
      height: 200.0,
      child: Center(child:Text('TopCharts')),
    );
  }

}