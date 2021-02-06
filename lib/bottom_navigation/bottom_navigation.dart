import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';


class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex;
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Nature",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.green,fontSize: 30),),
        actions: [
          Padding(
            padding: EdgeInsets.all(6.0),
            child: IconButton(
              icon: Icon(Icons.search,color:Colors.green,size:30),
              onPressed: (){},
            ),
          )
        ],
      ),
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