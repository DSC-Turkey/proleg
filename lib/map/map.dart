import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'locations.dart';

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
    zoom: 8.0,
  );
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(leading: Icon(Icons.map),
          backgroundColor: Colors.blue,title:
          Text("Google Maps With Markers"),),
        body: Container(
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
            },
            onMapCreated: (GoogleMapController controler){
              _controller.complete(controler);
            },
          ),
        )
    );
  }
}