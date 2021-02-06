import 'package:flutter/material.dart';
import 'package:models/config/sizeConfig.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool explore = true;
  bool issues = false;
  void _toggleExplore() {
    setState(() {
      explore = true;
      issues = false;
    });
  }
  void _toggleIssues() {
    setState(() {
      explore = false;
      issues = true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8FA),
      body: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Container(
            color: Colors.blue[600],
            height: 40 * SizeConfig.heightMultiplier,
            child: Padding(
              padding:  EdgeInsets.only(left: 30.0, right: 30.0, top: 5 * SizeConfig.heightMultiplier),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 12 * SizeConfig.heightMultiplier,
                        width: 24 * SizeConfig.widthMultiplier,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 3),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage("https://i.hizliresim.com/XHiwtM.jpg")) //profile pic here
                        ),
                      ),
                      SizedBox(width: 5 * SizeConfig.widthMultiplier,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Erencan Erel", //name surname here
                            style: TextStyle(
                            color: Colors.white,
                            fontSize: 3 * SizeConfig.textMultiplier,
                            fontWeight: FontWeight.bold
                          ),),
                          SizedBox(height: 1 * SizeConfig.heightMultiplier,),
                          Row(//we need if block for check user have instagram acc or not
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Image.network(
                                    "https://i2.wp.com/www.mollient.com/wp-content/uploads/2018/11/cropped-black-instagram-logo.png?fit=512%2C512&ssl=1",//instagram account
                                    height: 4 * SizeConfig.heightMultiplier,
                                    width: 4 * SizeConfig.widthMultiplier,
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 2 * SizeConfig.widthMultiplier,),
                                  Text("@erenJan",//instagram name here
                                    style: TextStyle(
                                    color: Colors.white60,
                                    fontSize: 2 * SizeConfig.textMultiplier,
                                  ),),
                                ],
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 3 * SizeConfig.heightMultiplier,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text("125", //total issue and sign during this time 
                            style: TextStyle(
                            color: Colors.white,
                            fontSize: 3 * SizeConfig.textMultiplier,
                            fontWeight: FontWeight.bold
                          ),),
                          Text("Explored", 
                            style: TextStyle(
                            color: Colors.white70,
                            fontSize: 1.9 * SizeConfig.textMultiplier,
                          ),),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text("543", //followers count 
                            style: TextStyle(
                            color: Colors.white,
                            fontSize: 3 * SizeConfig.textMultiplier,
                            fontWeight: FontWeight.bold
                          ),),
                          Text("Followers",
                            style: TextStyle(
                            color: Colors.white70,
                            fontSize: 1.9 * SizeConfig.textMultiplier,
                          ),),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white60),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("EDIT PROFILE", //edit profile for later on
                            style: TextStyle(
                            color: Colors.white60,
                            fontSize: 1.8 * SizeConfig.textMultiplier
                          ),),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding:  EdgeInsets.only(top: 35 * SizeConfig.heightMultiplier),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.0),
                  topLeft: Radius.circular(30.0),
                )
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding:  EdgeInsets.only(left: 60.0, bottom:5.0,right:60.0,top: 3 * SizeConfig.heightMultiplier),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () => _toggleExplore(),
                            child: Container(
                              decoration:BoxDecoration(
                                  border:Border(
                                    bottom: explore ? BorderSide(width: 2.0, color: Colors.lightBlue.shade900):BorderSide(width: 3.0, color: Colors.transparent),
                                  )
                                ),
                              child:Text("EXPLORED")
                            ),
                          ),
                          GestureDetector(
                            onTap: () => _toggleIssues(),
                            child: Container(
                                decoration:BoxDecoration(
                                  border:Border(
                                    bottom: issues ? BorderSide(width: 2.0, color: Colors.lightBlue.shade900):BorderSide(width: 3.0, color: Colors.transparent),
                                  )
                                ),
                              child:Text("ISSUES")
                            ),
                          ),
                        ],
                      )
                    ),
                    explore ? _exploreGalary() : _issueGalary(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  ScrollController _controller = new ScrollController();
  //explore Galary
  Widget _exploreGalary(){
    return Padding(
      padding: const EdgeInsets.only(left:8.0,right:8.0),
      child: Container(
        height:500,
        child: GridView.count(
          scrollDirection: Axis.vertical,
          crossAxisCount: 3 ,
          crossAxisSpacing: 8,
          mainAxisSpacing: 4,
          children: List.generate(6,(index){
            return Container(
              child: GestureDetector(
                child: Image.network(profile_photos[index],fit: BoxFit.fill,),
                onTap: (){},
              ),
            );
          }),
        ),
      ),
    );
  }
  //issue Galary
  Widget _issueGalary(){
    return Padding(
      padding: const EdgeInsets.only(left:8.0,right:8.0),
      child: Container(
        height:500,
        child: GridView.count(
          scrollDirection: Axis.vertical,
          crossAxisCount: 3 ,
          crossAxisSpacing: 8,
          mainAxisSpacing: 4,
          children: List.generate(6,(index){
            return Container(
                child: GestureDetector(
                  child: Image.network(profile_issues[index],fit: BoxFit.fill,),
                  onTap:(){},
              ),
            );
          }),
        ),
      ),
    );
  }
}
List<String> profile_photos = [
  "https://expertphotography.com/wp-content/uploads/2020/05/Nature-Photographer-Marco-Grassi.png",
  "https://expertphotography.com/wp-content/uploads/2020/05/Nature-Photographers-1.png",
  "https://expertphotography.com/wp-content/uploads/2020/05/outdoor-photographer-7-joshuacripps.jpg",
  "https://www.dogadernegi.org/wp-content/uploads/2018/03/ana-foto-salda-golu-cuneyt-oguztuzun.jpg",
  "https://i.dunya.com/2/1280/720/storage/old/files/2020/7/10/474885/474885.jpg.webp",
  "https://img.theculturetrip.com/768x432/wp-content/uploads/2018/02/1024px-aladaglar_1.jpg"
]; 
List<String> profile_issues = [
  "https://pbs.twimg.com/media/ES_r-ayXkAANzlo.jpg",
  "https://ar-files.s3.eu-central-1.amazonaws.com/s3fs-public/117639267_897440000764185_8763733386426492884_n-1-718x400.jpg",
  "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/A_walk_on_a_dirty_beach.JPG/1200px-A_walk_on_a_dirty_beach.JPG",
  "https://ichef.bbci.co.uk/news/640/cpsprodpb/9560/production/_108204283_dron2.jpg",
  "https://i.dunya.com/2/1280/720/storage/old/files/2020/7/10/474885/474885.jpg.webp",
  "https://www.izgazete.net/images/haberler/2018/03/bir_kulturel_miras_daha_yok_oluyor_h23490_ad267.jpg"
]; 
  