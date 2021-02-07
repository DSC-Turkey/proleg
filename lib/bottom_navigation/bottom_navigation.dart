import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:models/map/map.dart';
import 'package:models/profile_page/profile_page.dart';
import 'package:models/profile_page/profile_page.dart';


class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}
final List<Widget> _children = [
    PlaceholderWidget(Colors.white),
    MyMaps(),
    PlaceholderWidget(Colors.amber),
    ProfilePage(),
  ];
class _HomeState extends State<Home> {
  int currentIndex;
  @override
  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: currentIndex != 3 ?  AppBar(
          backgroundColor: Colors.white,
          title: Text("Nature",style: TextStyle(fontWeight: FontWeight.bold,color:Color(0xff005B44),fontSize: 30),),
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
          backgroundColor: Colors.green,
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
            BubbleBottomBarItem(backgroundColor: Colors.red, icon: Icon(Icons.notifications_none, color: Colors.black,), activeIcon: Icon(Icons.notifications_none, color: Colors.red,), title: Text("Şikayetler")),
            BubbleBottomBarItem(backgroundColor: Colors.green, icon: Icon(Icons.person, color: Colors.black,), activeIcon: Icon(Icons.person, color: Colors.green,), title: Text("Profil"))
          ],
        ),
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