import 'package:flutter/material.dart';
import 'package:models/config/sizeConfig.dart';
import 'package:models/profile_page/profile_data.dart';
class DetailedPost extends StatefulWidget {
  final String image_source;
  final String address;
  final String like;
  final String date;
  final String description;
  final int post_index;
  const DetailedPost(this.image_source,this.address,this.like,this.date,this.description,this.post_index);

  @override
  _DetailedPostState createState() => _DetailedPostState();
}

class _DetailedPostState extends State<DetailedPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Proleg"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.topLeft,
            width: MediaQuery. of(context). size. width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top:8.0,bottom:8.0,right:3.0,left:3.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 8 * SizeConfig.heightMultiplier,
                          width: 18 * SizeConfig.widthMultiplier,
                          decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 3),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage("https://i.hizliresim.com/XHiwtM.jpg")) //profile pic here
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Erencan Erel", //name surname here
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 2.7 * SizeConfig.textMultiplier,
                                fontWeight: FontWeight.bold,
                              )
                            ),
                            Text(widget.address, //name surname here
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 1.5 * SizeConfig.textMultiplier,
                                fontWeight: FontWeight.bold,
                              )
                            ),
                          ],
                        ),
                        
                      ],
                    ),
                  ),
                ),
                Container(
                  height:300,
                  child:Image.network(
                  widget.image_source,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top:8.0,bottom:18.0,left:10.0,right:10.0),
                  child: Text(
                    widget.description,
                    style: TextStyle(fontFamily: 'Pragmatica',fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom:18.0,left:10.0,right:10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          child: Text(
                            widget.like,
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Container(
                        child: Text(widget.date),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:18.0,right:18,top:4.0,bottom: 0.0),
                  child: Column(
                    children: [
                      Container(
                        child:Row(
                          children: <Widget>[
                            Container(
                              height: 8 * SizeConfig.heightMultiplier,
                              width: 10 * SizeConfig.widthMultiplier,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white,width: 3),
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(post_comments[widget.post_index].profile_image1)
                                ) //profile pic here
                              ),
                            ),
                            SizedBox(width: 6.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(post_comments[widget.post_index].name1, //name surname here
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 2.3 * SizeConfig.textMultiplier,
                                    fontWeight: FontWeight.bold,
                                  )
                                ),
                              ],
                            ),
                          ],
                        )
                      ),
                      Container(
                        padding: EdgeInsets.only(top:2.0,bottom:5.0,left:50.0,right:10.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            post_comments[widget.post_index].comment1,
                            style: TextStyle(fontFamily: 'Pragmatica',fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        child:Row(
                          children: <Widget>[
                            Container(
                              height: 8 * SizeConfig.heightMultiplier,
                              width: 10 * SizeConfig.widthMultiplier,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white,width: 3),
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(post_comments[widget.post_index].profile_image2)
                                ) //profile pic here
                              ),
                            ),
                            SizedBox(width: 6.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(post_comments[widget.post_index].name2, //name surname here
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 2.3 * SizeConfig.textMultiplier,
                                    fontWeight: FontWeight.bold,
                                  )
                                ),
                              ],
                            ),
                          ],
                        )
                      ),
                      Container(
                        padding: EdgeInsets.only(top:0.0,bottom:5.0,left:50.0,right:10.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            post_comments[widget.post_index].comment2,
                            style: TextStyle(fontFamily: 'Pragmatica',fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}