class Places {
  final int id;
  final String name;
  final String image;
  final double lat;
  final double long;
  final int alert;
  final int issue;
  final String address;
  final String legacy;

  const Places({this.id, this.name, this.image, this.lat, this.long,
    this.alert, this.issue, this.address, this.legacy});
}
List<Places> places = [
  const Places(
    id: 13,
    name: "Salda Gölü",
    image: "https://i.sozcu.com.tr/wp-content/uploads/2020/04/14/iecrop/salda_golu_16_9_1586874989.jpg",
    lat: 37.33,
    long: 29.41,
    alert: 4,
    issue: 45,
    address: "Burdur / Turkey",
    legacy: "NATIONAL"
  ),
  const Places(
    id: 1,
    name: "Hevsel Bahçeleri",
    image: "https://www.kulturportali.gov.tr/repoKulturPortali/small/PetekIcon/DiyarbakirIcon_20180123223458631.jpg",
    lat: 37.939167,
    long: 27.341056,
    alert: 1,
    issue: 3,
    address: "Kars / Turkey",
    legacy: "UNESCO"
  ),
  const Places(
    id: 2,
    name: "Göbekli Tepe",
    image: "http://bilimveaydinlanma.org/content/images/2019/03/g-beklitepe.jpg",
    lat: 37.222917,
    long: 38.922444,
    alert: 3,
    issue: 2,
    address: "Şanlı Urfa / Turkey",
    legacy: "UNESCO"
  ),
  const Places(
    id: 3,
    name: "Afrodisias",
    image: "https://img-s3.onedio.com/id-59636828902602b110517c75/rev-0/w-900/h-599/f-jpg/s-82428c47ff576ebbf744f9f48f3185f203a71f9c.jpg",
    lat: 37.709222,
    long: 28.723556,
    alert: 1,
    issue: 3,
    address: "Aydın / Turkey",
    legacy: "UNESCO"
  ),
  const Places(
    id: 4,
    name: "Ani",
    image: "https://images.turktoyu.com/uploads/content/16-XihfvF2dssrTTRXav2E3xtt7aIe89bfAUnzubWE6.jpeg",
    lat: 40.5,
    long: 43.566667,
    alert: 2,
    issue: 5,
    address: "Aydın / Turkey",
    legacy: "UNESCO"
  ),
  const Places(
    id: 5,
    name: "Ağrı Dağı",
    image: "https://www.hisglobal.com.tr/assets/images/1591970196.jpg",
    lat: 39.70443,
    long: 44.30141,
    alert: 1,
    issue: 4,
    address: "Ağrı / Turkey",
    legacy: "NATIONAL"
  ),
  const Places(
    id: 6,
    name: "Altınbeşik",
    image: "https://media-cdn.tripadvisor.com/media/photo-m/1280/1b/43/14/60/ig-togethertoday.jpg",
    lat: 37.037419,
    long: 31.633331,
    alert: 1,
    issue: 3,
    address: "Antalya / Turkey",
    legacy: "NATIONAL"
  ),
  const Places(
    id: 7,
    name: "Altındere",
    image: "https://resim.haber61.net/haberler/2018/09/04/altindere-vadisi-yenilenecek_05b16.jpg",
    lat: 40.708783,
    long: 39.648661,
    alert: 1,
    issue: 2,
    address: "Sakarya / Turkey",
    legacy: "NATIONAL"
  ),
  const Places(
    id: 8,
    name: "Başkomutan Tarihî Millî Parkı",
    image: "http://blog.avfoni.com/wp-content/uploads/2013/08/18ll2-600x340.jpg",
    lat: 38.655278,
    long: 30.468611,
    alert: 1,
    issue: 2,
    address: "Afyonkarahisar / Turkey",
    legacy: "NATIONAL"
  ),
  const Places(
    id: 9,
    name: "Beydağları Sahil Millî Parkı",
    image: "https://i.pinimg.com/originals/c3/cd/23/c3cd237ee046619d0dfd081f9c8fd95d.jpg",
    lat: 36.402778,
    long: 30.474444,
    alert: 2,
    issue: 3,
    address: "Antalya / Turkey",
    legacy: "NATIONAL"
  ),
  const Places(
    id: 9,
    name: "Beyşehir Gölü Millî Parkı",
    image: "https://gezilmesigerekenyerler.com/wp-content/uploads/2020/06/Beysehir-Golu-Milli-Parki-2.jpg",
    lat: 37.695867,
    long: 31.713978,
    alert: 3,
    issue: 10,
    address: "Konya / Turkey",
    legacy: "NATIONAL"
  ),
  const Places(
    id: 10,
    name: "Botan Çayı",
    image: "https://seyyahdefteri.com/wp-content/uploads/2019/01/Botan-Vadisi-%E2%80%93-Botan-%C3%87ay%C4%B1-Nerede-3.png",
    lat: 37.7266,
    long: 41.7764,
    alert: 3,
    issue: 10,
    address: "Siirt / Turkey",
    legacy: "NATIONAL"
  ),
  const Places(
    id: 11,
    name: "Hatila Vadisi Millî Parkı",
    image: "https://staticb.yolcu360.com/blog/wp-content/uploads/2019/08/23125923/hatila-millii-500x375.jpg",
    lat: 41.189811,
    long: 41.743109,
    alert: 1,
    issue: 3,
    address: "Artvin / Turkey",
    legacy: "NATIONAL"
  ),
  const Places(
    id: 12,
    name: "Yedigöller Milli Parkı",
    image: "https://seyahatdergisi.com/wp-content/uploads/2014/11/yedigoller-manzara-e1423496041211.jpg",
    lat: 40.943485,
    long: 31.745502,
    alert: 1,
    issue: 3,
    address: "Bolu / Turkey",
    legacy: "NATIONAL"
  ),
  const Places(
    id: 14,
    name: "Pergamon",
    image: "https://i4.hurimg.com/i/hurriyet/75/1110x740/5f5f0f2cd3806c29cc89d86a.jpg",
    lat: 39.125833,
    long: 27.18,
    alert: 1,
    issue: 3,
    address: "İzmir / Turkey",
    legacy: "UNESCO"
  ),
  const Places(
    id: 15,
    name: "Cumalıkızık",
    image: "https://www.bizevdeyokuz.com/wp-content/uploads/Cumalikizik-renkli-evler.jpg",
    lat: 40.182752,
    long: 29.167094,
    alert: 2,
    issue: 10,
    address: "Bursa / Turkey",
    legacy: "UNESCO"
  ),
  const Places(
    id: 16,
    name: "Çatalhöyük",
    image: "https://i2.milimaj.com/i/milliyet/75/1200x675/5d2b7904ec10bb2b3c6050b9.jpg",
    lat: 37.6675,
    long: 32.828333,
    alert: 3,
    issue: 12,
    address: "Konya / Turkey",
    legacy: "UNESCO"
  ),
  const Places(
    id: 17,
    name: "Çatalhöyük",
    image: "https://gezilmesigerekenyerler.com/wp-content/uploads/2015/09/Selimiye-Camii-01.jpg",
    lat: 37.6675,
    long: 32.828333,
    alert: 3,
    issue: 12,
    address: "Kırıkkale / Turkey",
    legacy: "UNESCO"
  ),
  const Places(
    id: 18,
    name: "Troya",
    image: "https://www.kulturportali.gov.tr/repoKulturPortali/small/PetekIcon/TroyaAti_20180223141046219.jpg",
    lat: 39.9575,
    long: 26.238889,
    alert: 3,
    issue: 12,
    address: "Çanakkale / Turkey",
    legacy: "UNESCO"
  ),
  const Places(
    id: 19,
    name: "Safranbolu",
    image: "https://i4.hurimg.com/i/hurriyet/75/750x0/5ab8a6007af5071ee4ce0474",
    lat: 41.245781,
    long: 32.693211,
    alert: 3,
    issue: 20,
    address: "Safranbolu / Turkey",
    legacy: "UNESCO"
  ),
  const Places(
    id: 20,
    name: "Letoon",
    image: "https://lh3.googleusercontent.com/proxy/aDYZBQNml761YMkQem0FeJMR6ujisU-d-wjS1I23Nul5Ncq5u1C9hPZb6-iZPvvnG3bgzQqB-hMHKh3L_P9VihWl4sVdvCAFdxOIFKPVqOdPX_qL6vycuZQ",
    lat: 36.335000,
    long: 29.320280,
    alert: 3,
    issue: 13,
    address: "Muğla / Turkey",
    legacy: "UNESCO"
  ),
  const Places(
    id: 21,
    name: "Hierapolis",
    image: "https://i12.haber7.net//haber/haber7/photos/2020/31/hierapolis_antik_kenti_1596016109_2168.jpg",
    lat: 37.925086,
    long: 29.125898,
    alert: 4,
    issue: 16,
    address: "Denizli / Turkey",
    legacy: "UNESCO"
  ),
  const Places(
    id: 22,
    name: "Nemrut Dağı",
    image: "https://www.bizevdeyokuz.com/wp-content/uploads/nemrut-dagi-adiyaman-13.jpg",
    lat: 37.980613,
    long: 38.740762,
    alert: 4,
    issue: 16,
    address: "Adıyaman / Turkey",
    legacy: "UNESCO"
  ),
  const Places(
    id: 23,
    name: "Ayasofya",
    image: "https://foto.haberler.com/haber/2020/07/11/ayasofya-nerede-hangi-ilcede-ayasofya-ya-nasil-13409142_9644_o.jpg",
    lat: 41.008528,
    long: 28.979917,
    alert: 4,
    issue: 26,
    address: "İstanbul / Turkey",
    legacy: "UNESCO"
  ),
  
];