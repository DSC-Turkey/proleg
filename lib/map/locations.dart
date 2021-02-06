
import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import 'package:models/map/map.dart';


//unesco protected areas 

Marker gobekliTepe = Marker(
  markerId: MarkerId('gobekliTepe'),
  position: LatLng(37.222917, 38.922444),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
  infoWindow: InfoWindow(
    title: "Göbekli Tepe",
    onTap: (){
    }              
  )
);
Marker afrodisias = Marker(
  markerId: MarkerId('afrodisias'),
  position: LatLng(37.709222, 28.723556),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
  infoWindow: InfoWindow(
    title: "Afrodisias",
    onTap: (){
    }              
  )
);
Marker ani  = Marker(
  markerId: MarkerId('ani'),
  position: LatLng(40.5, 43.566667),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
  infoWindow: InfoWindow(
    title: "Ani",
    onTap: (){
    }              
  )
);
Marker hevselBahceleri  = Marker(
  markerId: MarkerId('hevselBahceleri'),
  position: LatLng(37.939167, 27.341056),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
  infoWindow: InfoWindow(
    title: "Hevsel Bahçeleri",
    onTap: (){
    }              
  )
);
Marker pergamon = Marker(
  markerId: MarkerId('pergamon'),
  position: LatLng(39.125833, 27.18),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
  infoWindow: InfoWindow(
    title: "Pergamon",
    onTap: (){
    }              
  )
);
Marker cumalikizik = Marker(
  markerId: MarkerId('cumalikizik'),
  position: LatLng(40.182752, 29.167094),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
  infoWindow: InfoWindow(
    title: "Cumalıkızık",
    onTap: (){
    }              
  )
);
Marker catalhoyuk = Marker(
  markerId: MarkerId('catalhoyuk'),
  position: LatLng(37.6675, 32.828333),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
  infoWindow: InfoWindow(
    title: "Çatalhöyük",
    onTap: (){
    }              
  )
);
Marker selimiyeCamii = Marker(
  markerId: MarkerId('selimiyeCamii'),
  position: LatLng(41.678061, 26.559439),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
  infoWindow: InfoWindow(
    title: "Selimiye Camii",
    onTap: (){
    }              
  )
);
Marker troya = Marker(
  markerId: MarkerId('troya'),
  position: LatLng(39.9575, 26.238889),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
  infoWindow: InfoWindow(
    title: "Troya",
    onTap: (){
    }              
  )
);
Marker safranbolu = Marker(
  markerId: MarkerId('safranbolu'),
  position: LatLng(41.245781, 32.693211),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
  infoWindow: InfoWindow(
    title: "Safranbolu",
    onTap: (){
    }              
  )
);
Marker letoon = Marker(
  markerId: MarkerId('letoon'),
  position: LatLng(36.335000, 29.320280),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
  infoWindow: InfoWindow(
    title: "Letoon",
    onTap: (){
    }              
  )
);
Marker hierapolis = Marker(
  markerId: MarkerId('hierapolis'),
  position: LatLng(37.925086, 29.125898),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
  infoWindow: InfoWindow(
    title: "Hierapolis",
    onTap: (){
    }              
  )
);
Marker nemrutDagi = Marker(
  markerId: MarkerId('nemrutDagi'),
  position: LatLng(37.980613, 38.740762),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
  infoWindow: InfoWindow(
    title: "Nemrut Dağı",
    onTap: (){
    }              
  )
);
Marker goremeMilliPark = Marker(
  markerId: MarkerId('goremeMilliPark'),
  position: LatLng(38.666667, 34.85),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
  infoWindow: InfoWindow(
    title: "Göreme Tarihî Millî Parkı",
    onTap: (){
    }              
  )
);
Marker divrigi = Marker(
  markerId: MarkerId('divrigi'),
  position: LatLng(39.373611, 38.123611),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
  infoWindow: InfoWindow(
    title: "Divriği Ulu Camii ve Darüşşifası",
    onTap: (){
    }              
  )
);
Marker ayasofya = Marker(
  markerId: MarkerId('ayasofya'),
  position: LatLng(41.008528, 28.979917),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
  infoWindow: InfoWindow(
    title: "Ayasofya",
    onTap: (){
    }              
  )
);
Marker ayaIrini = Marker(
  markerId: MarkerId('ayaIrini'),
  position: LatLng(41.009694, 28.981111),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
  infoWindow: InfoWindow(
    title: "Aya İrini",
    onTap: (){
    }              
  )
);
Marker kucukAyasofya = Marker(
  markerId: MarkerId('kucukAyasofya'),
  position: LatLng(41.002781, 28.971939),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
  infoWindow: InfoWindow(
    title: "Küçük Ayasofya Camii",
    onTap: (){
    }              
  )
);
Marker topkapiSarayi = Marker(
  markerId: MarkerId('topkapiSarayi'),
  position: LatLng(41.013056, 28.983889),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
  infoWindow: InfoWindow(
    title: "Topkapı Sarayı",
    onTap: (){
    }              
  )
);
Marker suleymaniyeCamii = Marker(
  markerId: MarkerId('suleymaniyeCamii'),
  position: LatLng(41.016111, 28.963889),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
  infoWindow: InfoWindow(
    title: "Süleymaniye Camii",
    onTap: (){
    }              
  )
);
Marker zeyrekKorumaAlani = Marker(
  markerId: MarkerId('zeyrekKorumaAlani'),
  position: LatLng(41.019576, 28.957246),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
  infoWindow: InfoWindow(
    title: "Zeyrek Koruma Alanı",
    onTap: (){
    }              
  )
);

//national parks

Marker agriDagi = Marker(
  markerId: MarkerId('agriDagi'),
  position: LatLng(39.70443, 44.30141),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
  infoWindow: InfoWindow(
    title: "Ağrı Dağı",
    onTap: (){
    }              
  )
);
Marker altinbesik = Marker(
  markerId: MarkerId('altinbesik'),
  position: LatLng(37.037419, 31.633331),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
  infoWindow: InfoWindow(
    title: "Altınbeşik",
    onTap: (){
    }              
  )
);
Marker altindere = Marker(
  markerId: MarkerId('altindere'),
  position: LatLng(40.708783, 39.648661),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
  infoWindow: InfoWindow(
    title: "Altındere",
    onTap: (){
    }              
  )
);
Marker baskomutanTarihi = Marker(
  markerId: MarkerId('baskomutanTarihi'),
  position: LatLng(38.655278, 30.468611),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
  infoWindow: InfoWindow(
    title: "Başkomutan Tarihî Millî Parkı",
    onTap: (){
    }              
  )
);
Marker beydaglariSahil = Marker(
  markerId: MarkerId('beydaglariSahil'),
  position: LatLng(36.402778, 30.474444),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
  infoWindow: InfoWindow(
    title: "Beydağları Sahil Millî Parkı",
    onTap: (){
    }              
  )
);
Marker beysehirGolu = Marker(
  markerId: MarkerId('beysehirGolu'),
  position: LatLng(37.695867, 31.713978),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
  infoWindow: InfoWindow(
    title: "Beyşehir Gölü Millî Parkı",
    onTap: (){
    }              
  )
);
Marker botanCayi = Marker(
  markerId: MarkerId('botanCayi'),
  position: LatLng(37.7266, 41.7764),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
  infoWindow: InfoWindow(
    title: "Botan Çayı",
    onTap: (){
    }              
  )
);
Marker dilekYarimadasi = Marker(
  markerId: MarkerId('dilekYarimadasi'),
  position: LatLng(37.668928, 27.161756),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
  infoWindow: InfoWindow(
    title: "Dilek Yarımadası",
    onTap: (){
    }              
  )
);
Marker dalaGolu  = Marker(
  markerId: MarkerId('dalaGolu'),
  position: LatLng(40.767486, 26.186373),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
  infoWindow: InfoWindow(
    title: "Gala Gölü Millî Parkı",
    onTap: (){
    }              
  )
);
Marker gullukDagi   = Marker(
  markerId: MarkerId('gullukDagi'),
  position: LatLng(37.016533, 30.513528),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
  infoWindow: InfoWindow(
    title: "Güllük Dağı Millî Parkı",
    onTap: (){
    }              
  )
);
Marker hatilaVadisi   = Marker(
  markerId: MarkerId('hatilaVadisi'),
  position: LatLng(41.189811, 41.743109),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
  infoWindow: InfoWindow(
    title: "Hatila Vadisi Millî Parkı",
    onTap: (){
    }              
  )
);
Marker honazDagi  = Marker(
  markerId: MarkerId('honazDagi'),
  position: LatLng(37.758056, 29.270833),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
  infoWindow: InfoWindow(
    title: "Honaz Dağı",
    onTap: (){
    }              
  )
);
Marker yedigollerNational = Marker(
  markerId: MarkerId('yedigollerNational'),
  position: LatLng(40.943485, 31.745502),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
  infoWindow: InfoWindow(
    title: "Yedigöller National Park",
    onTap: (){
    }              
  )
);
Marker soguksuNational   = Marker(
  markerId: MarkerId('soguksuNational'),
  position: LatLng(40.454131, 32.622317),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
  infoWindow: InfoWindow(
    title: "Soğuksu National Park",
    onTap: (){
    }              
  )
);
Marker saldaGolu   = Marker(
  markerId: MarkerId('saldaGolu '),
  position: LatLng(37.33, 29.41),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
  infoWindow: InfoWindow(
    title: "Salda Gölü",
    onTap: (){
    }              
  )
);



