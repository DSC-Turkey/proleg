
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:models/main_page/homelist.dart';
import 'package:models/main_page/homenature.dart';
import 'package:models/main_page/homereport.dart';
import 'package:models/map/map.dart';
import 'package:models/profile_page/profile_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
final List<Widget> _children = [
    HomeBody(),
    MyMaps(),
    ProfilePage(),
  ];
  Color PrimaryColor =  Color(0xff109618);

class _HomePageState extends State<HomePage> {
    int currentIndex;
  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });}


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: currentIndex != 2 ?  AppBar(
          backgroundColor: Colors.white,
          title: Text("Proleg",style: TextStyle(fontWeight: FontWeight.bold,color:Color(0xff005B44),fontSize: 30),),
          actions: [
            Padding(
              padding: EdgeInsets.all(6.0),
              child: IconButton(
                icon: Icon(Icons.search,color:Color(0xff005B44),size:30),
                onPressed: (){},
              ),
            )
          ],
        ) : null,
        body: _children[currentIndex],
        floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
        backgroundColor: Color(0xff005B44),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BubbleBottomBar(
              opacity: .2,
              currentIndex: currentIndex,
              onTap: changePage,
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
              elevation: 8,
              fabLocation: BubbleBottomBarFabLocation.end, //new
              hasNotch: true, //new
              hasInk: true, //new, gives a cute ink effect
              inkColor: Colors.black12 ,//optional, uses theme color if not specified
              items: <BubbleBottomBarItem>[
                  BubbleBottomBarItem(backgroundColor: Colors.red, icon: Icon(Icons.home, color: Colors.black,), activeIcon: Icon(Icons.home, color: Colors.red,), title: Text("Ana Sayfa")),
                  BubbleBottomBarItem(backgroundColor: Colors.deepPurple, icon: Icon(Icons.map_outlined, color: Colors.black,), activeIcon: Icon(Icons.map_outlined, color: Colors.deepPurple,), title: Text("Harita")),
                  BubbleBottomBarItem(backgroundColor: Colors.green, icon: Icon(Icons.person, color: Colors.black,), activeIcon: Icon(Icons.person, color: Colors.green,), title: Text("Profil"))
              ],
            ),
        );
  }}
  
  class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        // Expanded(flex: 1, child: new InstaStories()),
        Flexible(child: HomeList())
      ],
    ); 
  }
}
class PlaceholderWidget extends StatelessWidget {
  final Color color;

  PlaceholderWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}