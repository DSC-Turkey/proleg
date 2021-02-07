import 'package:flutter/material.dart';
class HomeReport extends StatefulWidget {
  final Widget child;

  HomeReport({Key key, this.child}) : super(key: key);

  _HomeReportState createState() => _HomeReportState();
}

class _HomeReportState extends State<HomeReport> {
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