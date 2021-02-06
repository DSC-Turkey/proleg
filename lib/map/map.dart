import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'locations.dart';
import 'places.dart';

class MyMaps extends StatefulWidget{
  @override
  State createState() {
    return MyMapsState();
  }

}
class MyMapsState extends State{
  final GlobalKey scaffoldKey = GlobalKey();

  Completer _controller = Completer();
  Map<MarkerId,Marker> markers = {};
  static final CameraPosition _kGooglePlex =
  CameraPosition(
    target: LatLng(39.919485, 32.854144),
    zoom: 6.0,
  );
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        body: Stack(
          children: <Widget>[
            _googlemap(context),
            _listBox(context)
          ],
        )
    );
  }
  //google map widget
  Widget _googlemap(BuildContext context){
    return Container(
      child: GoogleMap(initialCameraPosition: _kGooglePlex,
        zoomControlsEnabled: false,
        onTap: (_){},
        mapType: MapType.normal,
        markers: {
          gobekliTepe,
          afrodisias,
          ani,
          hevselBahceleri,
          pergamon,
          cumalikizik,
          catalhoyuk,
          selimiyeCamii,
          safranbolu,
          letoon,
          hierapolis,
          nemrutDagi,
          goremeMilliPark,
          divrigi,
          ayasofya,
          ayaIrini,
          kucukAyasofya,
          topkapiSarayi,
          suleymaniyeCamii,
          zeyrekKorumaAlani,
          agriDagi,
          altinbesik,
          altindere,
          baskomutanTarihi,
          beydaglariSahil,
          beysehirGolu,
          botanCayi,
          dilekYarimadasi,
          dalaGolu,
          gullukDagi,
          hatilaVadisi,
          honazDagi,
          soguksuNational,
          saldaGolu,
          yedigollerNational
        },
        onMapCreated: (GoogleMapController controler){
          _controller.complete(controler);
        },
      ),
    );
  }
  Future<void> _goToLocation(double lat, double long) async{
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(lat,long),zoom:15.0,tilt:50.0,bearing: 45.0)));
  }
  //listview bottom of map
  Widget _listBox(BuildContext context){
    return Align(
      alignment: Alignment.bottomLeft,
      child:Container(
        margin: EdgeInsets.symmetric(vertical:20.0),
        height:120.0,
        child: ListView.builder(
          itemCount: places.length,
          scrollDirection:Axis.horizontal,
          itemBuilder: (context , index){
            return Container(
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child:_boxes(places[index].image,places[index].lat,places[index].long,places[index].name,places[index],places[index].legacy)
              )
            );
          }
        ),
      )
    );
  }
  //every box of list
  Widget _boxes(String _image , double lat , double long , String name, Places places, String legacy){
    return GestureDetector(
      onTap: (){
        _goToLocation(lat,long);
      },
      child: Container(
        child: new FittedBox(
          child: Material(
            color:Colors.white,
            elevation: 14.0,
            borderRadius: BorderRadius.circular(24.0),
            shadowColor: Colors.white,
            child: Stack(
              children:<Widget>[
                if(legacy == "UNESCO")
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Image(
                      image: NetworkImage("https://cdn.iconscout.com/icon/free/png-256/unesco-33-555588.png"),
                      width: 50,
                      height: 50,
                      color: Colors.blueAccent,
                    )
                  ),
                if ( legacy == "NATIONAL") 
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Image(
                      image: NetworkImage("http://assets.stickpng.com/images/580b585b2edbce24c47b271d.png"),
                      width: 50,
                      height: 50,
                      color: Colors.green,
                    )
                  ),
                Row(
                  children: <Widget>[
                    Container(
                      width: 200.0,
                      height: 200,
                      child: ClipRRect(
                        borderRadius: new BorderRadius.circular(24.0),
                        child: Image(
                          fit: BoxFit.fill,
                          image: NetworkImage(_image)
                        )
                      )
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: _details(places.name,places.alert,places.issue,places.address)
                      )
                    ),
                  ],
                )
              ]
            )
          )
        )
      )  
    );
  }
  //details for list boxes 
  Widget _details(String name , int alertCount , int issueCount, String address ){
    return Column(
      children: <Widget>[
        SizedBox(height:5.0),
        Padding(
          padding: EdgeInsets.only(left:0.0),
          child: Container(
            child:Text(name,style: TextStyle(color: Colors.black,fontSize:25.0,fontWeight: FontWeight.bold),)
          )
        ),
        SizedBox(height:5.0),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                child: Text("+"+issueCount.toString(),style: TextStyle(color:Colors.red,fontSize:22.0),)
              ),
              Container(
                child:Row(
                  children: <Widget>[
                    for (var i = 0; i < alertCount; i++) Icon(Icons.assignment_late,color:Colors.red,size:24.0),
                  ],
                )
              ),
            ],
          ),
        ),
        SizedBox(height:10.0),
        Container(
          child:Text(address,style:TextStyle(color:Colors.black,fontSize: 16,fontWeight: FontWeight.bold))
        )
      ],
    );
  }
}