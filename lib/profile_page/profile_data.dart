

class Profile_photos {
  final String address;
  final String image;
  final String date;
  final String like;
  final String description;
  const Profile_photos({this.address,this.image,this.date,this.like,this.description});
}
List<Profile_photos > profile_photos = [
  const Profile_photos(
    address: "Salda Gölü / Burdur / Turkey",
    image : "https://www.dogadernegi.org/wp-content/uploads/2018/03/ana-foto-salda-golu-cuneyt-oguztuzun.jpg",
    date : "02.02.2021",
    like : "145 kişi beğendi",
    description: "Bugün salda gölündeydim. Ülkemizin bu derece güzelliklerle dolu bir yer olduğunu tekrar hatırladım. Bu güzellikleri korumak ve çocuklarımıza güzel teslim etmek hepimizin görevi!!!"
  ),
  const Profile_photos(
    address: "Yeşilırmak / Amasra / Turkey",
    image : "https://cdn1.ntv.com.tr/gorsel/Iov0W1K_RUGHW5W8M63VuA.jpg?width=1000&mode=both&scale=both&v=1610364619175",
    date : "13.01.2021",
    like : "201 kişi beğendi",
    description: "Şehrin merkezinden geçen Yeşilırmak'ın kenarında sıralanan ve geleneksel Osmanlı evinin bütün özelliklerini bünyesinde taşıyan Amasya evleri bu şehri görmek için iyi bir neden. Kesinlikle görmeniz gereken bir yer."
  ),
  const Profile_photos(
    address: "Ulubatlı / Bursa / Turkey",
    image: "https://i2.milimaj.com/i/milliyet/75/0x410/5f6c6cbe5542800f48d2d2d2.jpg",
    description : "Ulubatlı , yüzbinlerce su kuşuna beslenme ve barınma olanağı sağlıyor ve içinde 21 çeşit balık türü bulunuyor. Buranın korunması ve doğal hayatın korunmasına katkıda bulunmamız laızm.",
    date : "25.09.2020",
    like : "401 kişi beğendi"
  ),
  const Profile_photos(
    address: "Cumalıkızık / Bursa / Turkey",
    image : "https://cdn1.ntv.com.tr/gorsel/rN_meu6-rEiktqBxb4Nb3A.jpg?width=1000&mode=both&scale=both&v=1610364619175",
    date : "26.04.2019",
    like : "461 kişi beğendi",
    description: "Osmanlı mimarisinin en güzel örneklerinin verildiği evlerden oluşan köye giderseniz, benim gibi sizi de dar sokaklardan akan sular karşılayacak."
  ),
];
class Post_comments {
  final String profile_image1;
  final String name1;
  final String profile_image2;
  final String name2;
  final String comment1;
  final String comment2;
  const Post_comments({this.profile_image1,this.name1,this.profile_image2,this.name2,this.comment1,this.comment2});
}
List<Post_comments> post_comments = [
  const Post_comments(
    profile_image1:"https://s3-eu-west-1.amazonaws.com/doktortakvimi.com/doctor/35ee65/35ee65ba6c37dc603ddf9a02be4416fb_large.jpg",
    name1:"Mehmet Dinç",
    profile_image2:"https://www.istanbulmodaakademisi.com/sites/default/files/egitmenler/selin_sarikaya_profil.jpg",
    name2:"Selin Aysin",
    comment1:"Katılıyorum1!!!",
    comment2:"Çok güzel bir fotoğraf. Baktıkça gözüm gönlüm açıldı <3"
  ),
  const Post_comments(
    profile_image1:"https://i2.wp.com/www.sosyazete.com/wp-content/uploads/2018/11/sude-alkis2-1.jpg?fit=1080%2C907&ssl=1",
    name1:"Sude Duru",
    profile_image2:"https://www.istanbulmodaakademisi.com/sites/default/files/egitmenler/selin_sarikaya_profil.jpg",
    name2:"Selin Aysin",
    comment1:"Karadenizimizin taşı toprağı çok güzel.",
    comment2:"Mimari olarak böylesine güzel eserleri daha çok tanıtmalıyız ülke olarak."
  ),
  const Post_comments(
    profile_image1:"https://dergipark.org.tr/media/cache/user_croped/e66b/993a/bc5c/58fa4d28b4600.jpg",
    name1:"Dursun Öz",
    profile_image2:"https://www.modahukukuenstitusu.org/wp-content/uploads/2020/01/Sena-Cu%CC%88bbe-scaled.jpg",
    name2:"Sena Saydam",
    comment1:"O kadar canlı türü var mıymış cidden. Bugün de bilgilendik :D",
    comment2:"Doğal güzelliklerimize gözümüz gibi bakmalıyız..."
  ),
  const Post_comments(
    profile_image1:"https://i2.wp.com/www.sosyazete.com/wp-content/uploads/2018/11/sude-alkis2-1.jpg?fit=1080%2C907&ssl=1",
    name1:"Sude Duru",
    profile_image2:"https://cdn-amk.sozcu.com.tr/amk-resimler/2020/05/iecrop/ali-koc-2_16_9_1571599162_16_9_1576428119_1_1_1590640808-400x400.jpg",
    name2:"Ali Has",
    comment1:"Ah umarım çok ıslanmamışsınızdır :D",
    comment2:"Güzel BURSAM benim",
  ),
];
class Profile_issues {
  final String address;
  final String image;
  final String date;
  final String like;
  final String description;
  final bool isColsed;
  const Profile_issues({this.address,this.image,this.date,this.like,this.description,this.isColsed});
}
List<Profile_issues > profile_issues = [
  const Profile_issues(
    address: "Diyarbakır Surları / DiyarBakır / Turkey",
    image : "https://www.diyarbakirbarosu.org.tr/public/uploads/post/kulturel-mirasimizin-yok-olmasina-seyirci-kalmayacagiz!-38b9eef08f9b21c9051b7478608a64a8.jpeg",
    date : "10.05.2019",
    like : "3.990 kişi şikayet etti",
    description: "Mezopotamya ve Anadolu uygarlıklarının kadim kültürleri bağlamında geleneksel bir kent kimliğine sahip olan Diyarbakır, Tarihi Surlarıyla birçok kültür ve farklı inancın yıllarca barış içinde yaşadığı ve birçok tarihi, kültürel ve sanatsal bir zenginliği bünyesinde barındıran kadim kentlerdendir. Bu bağlamda; 2015 yılında Almanya’nın Bonn şehrinde düzenlenen Dünya Miras Komitesi 39. Dönem Toplantısı’nda  “Diyarbakır Surları”nın UNESCO Dünya Miras Listesi’ne kaydedilmesine karar verilmiştir.Diyarbakır Surları ve Burçları, bölgede hüküm süren medeniyetlerin, kültürlerin ve dönemin ihtiyaçları doğrultusunda şekillenerek, özgünlüğünü ve 7 bin yıllık tarihsel varlığını halen sürdüren orijinal ve özgün kültür varlıkları olarak yaşamakta, dünya tarihi için önemli bir evrensel miras özelliğini korumaktadır.Dünyanın en eski ve en sağlam yapılarından biri olan Diyarbakır Surları birçok türküye, maniye, efsaneye konu olmuş ve üzerindeki görkemli kabartmaları ve kitabeleriyle dünyanın önemli bir kültürel mirası haline gelmiştir.\nBilindiği gibi; Anayasa’nın 63. maddesi uyarınca; tarih, kültür ve tabiat varlıklarının ve değerlerinin korunmasını sağlamak ve bu amaçla destekleyici ve teşvik edici tedbirleri almak,Devlete bir görev olarak verilmiştir.Bütün insanlığın ortak mirası olarak kabul edilen evrensel değerlere sahip kültürel ve doğal varlıkları korumak amacıyla UNESCO’nun kabul ettiği ve Türkiye’nin de 1983 yılında taraf olduğu “Dünya Kültürel ve Doğal Mirasının Korunmasına Dair Sözleşme” uyarınca; Türkiye, topraklarında bulunan kültürel ve doğal mirasın saptanması, korunması, muhafazası, teşhiri ve gelecek kuşaklara iletilmesinin sağlamayı, kültürel ve doğal mirası tehdit eden tehlikelere karşı müdahale yöntemlerini mükemmelleştirmeyi, Bu mirasın saptanması, korunması, muhafazası, teşhiri, yenileştirilmesi için gerekli olan uygun yasal, bilimsel, teknik, idarî ve malî önlemleri almayı taahhüt etmiştir.\nBu kapsamda tarihsel süreç içerisinde birçok yaşanmışlıkları üzerinde barındıran bir eşsiz eser olan Diyarbakır Surları’nın bakım, onarım ve restorasyon işlemlerinin acilen yapılması gerektiği açıktır. Bu tür işlemlerinin de ilgili Bakanlık ve kurum bütçelerinden, Valilik bütçesinde toplanan KVK (Kültür Varlıkları Katkı Payı) paylarından veya yapılacak projeler karşılığında Avrupa Birliği’nden veya Birleşmiş Milletler’denalınacak hibe veya fonlar kullanılmak suretiyle yapılmasıgayet mümkündür.",
    isColsed: false,
  ),
  const Profile_issues(
    address: "Yahudi Mahallesi / Ankara / Turkey",
    image: "https://i2.wp.com/www.salom.com.tr//uploads/images/1832020cmQHQn07yNzbmBL7.jpg",
    description : "Günümüzde İstiklal Mahallesi olarak bilinen Yahudi Mahallesi, Ankara’nın Altındağ ilçesinde yer alır. Mahalle, Osmanlı döneminde çoğunlukla etrafındaki mescit ve camilere göre adlandırılmıştı. Cumhuriyet sonrasında ise İstiklal Mahallesi ismini aldı. Ancak mahallede genellikle Yahudi nüfusunun yaşaması ve sinagogun olmasından dolayı Ankaralılar burayı Yahudi Mahallesi olarak isimlendirdi ve hâlâ bölge halkı tarafından bu isim kullanılmakta. Ulus, Kale ve Hamamönü gibi ticari ve turistik merkezlerin tam ortasında olmasına rağmen Yahudi Mahallesi neredeyse görmezden gelinerek kaderine terk edilmiş durumda. Ankara’daki Yahudiler ve Yahudi Mahallesi hakkında birçok yayın yapıldı. Bu yazının amacı ise günümüzde oldukça kötü bir durumda olan Yahudi Mahallesini tekrar gündeme getirmek ve kısa bilgilerle mahallenin önemini vurgulamaktır.",
    date : "18.05.2019",
    like : "18.890 kişi şikayet etti",
    isColsed: false
  ),
  const Profile_issues(
    address: "Bafa Gölü / Aydın / Turkey",
    image : "https://cdnuploads.aa.com.tr/uploads/Contents/2018/05/22/thumbs_b_c_75ce6e0715bfcbfd32c05277c8e857ab.jpg",
    date : "22.05.2018",
    like : "14.890 kişi şikayet etti",
    description: "Muğla ve Aydın sınırları içinde yer alan, Ege bölgesinin en büyük doğal gölü olan Bafa Gölü'nde, bu yıl yaşanan kuraklık nedeniyle daha erken dönemde artış gösteren su yosunu ve kıyalarda görülen köpürme nedeniyle çevreye ağır bir koku yayıldı. Gölün belli kısımları da köpürme nedeniyle beyaz renge boyandı.\n\"Gölde şu an fosfat kirlenmesi var. Hiperötrifikasyon diye tanımladığımız hücre hacmindeki artışların meydana geldiğini söyleyebiliriz. En çok tehlikeli olan yerler de Kapıkırı ve Gölyaka bölgeleri. Buralar aynı zamanda turizmin ve tarımın gözbebeği. Gölde şu an zehirli algler de söz konusu. Alg oranında geçen hafta yaptığımız incelemede bir artış gözlemiştik. Özellikle İkiz Adalar bölgesinde mavi-yeşil alg artışı var. Gölün dibi de kimyasal madde dolu. Artık hendek otlarını göremiyoruz. Bafa Gölü adeta 580 kilometre uzağındaki Dinar'dan başlayarak, Aydın, Söke ve Uşak'ın tarımsal ve fabrika atıkları nedeniyle çöp tenekesi gibi.\"Kesici, balık üretim çiftliklerinde yapılan işlemlerin de göldeki tuzluluk oranını artırdığını iddia ederek taşkın zamanlarında göl kenarındaki tarımsal alanlarda kullanılan kimyasalların göle karıştığını ve kirliliği etkilediğini ifade etti.\"",
    isColsed: true
  ),
];
