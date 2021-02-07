
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:models/main_page/addfeed.dart';
import 'package:models/main_page/homelist.dart';
import 'package:models/main_page/homenature.dart';
import 'package:models/main_page/homereport.dart';
import 'package:models/map/map.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
final List<Widget> _children = [
    PlaceholderWidget(Colors.white),
    MyMaps(),
    PlaceholderWidget(Colors.green),
    PlaceholderWidget(Colors.amber)
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
        appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("PROLEG",style: 
        TextStyle(fontWeight: FontWeight.bold,color:Colors.green,
        fontFamily:  "Signatra",
        fontSize: 30.0),),
        actions: [
          Padding(
            padding: EdgeInsets.all(6.0),
            child: IconButton(
              icon: Icon(Icons.search,color:Colors.green,size:30),
              onPressed: (){},
            ),
          )
        ],
      /*   bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.white,
              indicatorWeight: 6.0, 
               onTap: (index){
                 setState(() {
                  switch (index) {
                    case 0:
                      PrimaryColor= Color(0xffff5722);
                      break;
                      case 1:
                      PrimaryColor= Color(0xff3f51b5);
                      break;
                      case 2:
                      PrimaryColor= Color(0xffe91e63);
                      break;
                      case 3:
                      PrimaryColor= Color(0xff9c27b0);
                      break;
                      case 4:
                      PrimaryColor= Color(0xff2196f3);
                      break;
                    default:
                  }
            });
              },
              tabs: <Widget>[
                Tab(
                  child: Container(
                    child: Text(
                      'NATURE',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      'REPORT',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
                
              ],
            ),*/
          ),
     /*   body: TabBarView(
            children: <Widget>[
              HomeNature(),//ff5722
              HomeReport(),//3f51b5
            ],
          ),
      */
        body: new HomeBody(),
           floatingActionButton: FloatingActionButton(
        onPressed: (){
           Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => MyAddPage()));
        },
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