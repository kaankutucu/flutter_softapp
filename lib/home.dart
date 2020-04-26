import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:softapp/components/horizontal_listview.dart';
import 'package:softapp/components/products.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(  //anasayfa slider icin olusturulan carousel sinifi
      height: 200,
      child: new Carousel(
        boxFit: BoxFit.cover, // genisligi alan kadar verdik
        images: [
          AssetImage('assets/images/c1.jpg'), // resimleri pubspec.yml klasorunden cekmek icin olusturuldu
          AssetImage('assets/images/c2.jpg'), // resimleri pubspec.yml klasorunden cekmek icin olusturuldu
          AssetImage('assets/images/c3.png'), // resimleri pubspec.yml klasorunden cekmek icin olusturuldu
          AssetImage('assets/images/c4.jpg'), // resimleri pubspec.yml klasorunden cekmek icin olusturuldu
          AssetImage('assets/images/c5.jpg'), // resimleri pubspec.yml klasorunden cekmek icin olusturuldu
          AssetImage('assets/images/c6.jpg'), // resimleri pubspec.yml klasorunden cekmek icin olusturuldu
        ],
        autoplay: false, // slider otomatik oynatilmasini engelledik
        dotSize: 4.0, //slider gecis nokta boyutunu ayarlamak icin kullanildi
        indicatorBgPadding: 2, // noktalarin bosluklarini ayarlamak icin kullanildi
      ),
    );
    return Scaffold(
      appBar: new AppBar(  // appbar olusturup menu ayarlamasi yapacagiz
        elevation: 0.1,
        backgroundColor: Colors.lightBlueAccent[200], // appbara arka plan rengi verdik
        title: Center(child: Image.asset('assets/images/softapp_logo.png',width: 150,)), // assetten iconumuzu cekip ortalanmasini sagladik
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search,color: Colors.white), onPressed:(){} ),//appbarda olusturulan iconu verebilmek icin olusturulan kod
        ],
      ),

      drawer: new Drawer(  //yana acilir hamburger menuyu olusturmuak icin kullanilan kod
        child: new ListView(  // acilan hamburger menuyu liste seklinde gostermek icin olusturuldu
          children: <Widget>[
            new UserAccountsDrawerHeader(accountName: Text('IhsanEfe'), accountEmail: Text('Ihsanefe@gmail.com'),// kullanici bilgilerini eklemek icin olusturulan kod blogu
              currentAccountPicture: GestureDetector( // olusturulan child icerisine sigdirmak icin kullanilan kod
                child: new CircleAvatar(// hamburger menudeki avatar resmini olusturmak icin kullanilan kod
                  backgroundColor: Colors.grey, // avatarin arka planini ayarlamak icin verilen kod
                  child:Image.asset('assets/images/pp.jpg',), // avatar icerisine iconu koymak icin verilen kod
                ),
              ),
              decoration: new BoxDecoration(  // box decoration ile profil arka planina renk vermis oluyoruz.
                  color: Colors.lightBlueAccent[200]
              ),
            ),
            InkWell(  // tiklanma efektini gosteren kod
              onTap: () {}, // tiklandiginda gidecek linki verdigimiz yer
              child: ListTile(  // list olusturup isim ve icon veriyoruz
                title: Text('Anasayfa', style: TextStyle(
                    color: Colors.lightBlueAccent
                ),),
                leading: Icon(Icons.home, color: Colors.lightBlueAccent,),
              ),
            ),

            InkWell(  // tiklanma efektini gosteren kod
              onTap: () {}, // tiklandiginda gidecek linki verdigimiz yer
              child: ListTile(  // list olusturup isim ve icon veriyoruz
                title: Text('Hesabim', style: TextStyle(
                    color: Colors.lightBlueAccent
                ),),
                leading: Icon(Icons.account_box, color: Colors.lightBlueAccent,),
              ),
            ),

            InkWell(  // tiklanma efektini gosteren kod
              onTap: () {}, // tiklandiginda gidecek linki verdigimiz yer
              child: ListTile(  // list olusturup isim ve icon veriyoruz
                title: Text('Kategori', style: TextStyle(
                    color: Colors.lightBlueAccent
                ),),
                leading: Icon(Icons.category, color: Colors.lightBlueAccent,),
              ),
            ),

            InkWell(  // tiklanma efektini gosteren kod
              onTap: () {}, // tiklandiginda gidecek linki verdigimiz yer
              child: ListTile(  // list olusturup isim ve icon veriyoruz
                title: Text('Favorilerim' ,style: TextStyle(
                    color: Colors.lightBlueAccent
                ),),
                leading: Icon(Icons.favorite, color: Colors.lightBlueAccent,),
              ),
            ),
            Divider(),  // iconlar arasina cizgi koymak icin olusturulan kod

            InkWell(  // tiklanma efektini gosteren kod
              onTap: () {}, // tiklandiginda gidecek linki verdigimiz yer
              child: ListTile(  // list olusturup isim ve icon veriyoruz
                title: Text('Ayarlar' , style: TextStyle( // yazilara renk vermek icin olusturulan kod
                    color: Colors.redAccent
                ),),
                leading: Icon(Icons.settings, color: Colors.redAccent,),
              ),
            ),

            InkWell(  // tiklanma efektini gosteren kod
              onTap: () {}, // tiklandiginda gidecek linki verdigimiz yer
              child: ListTile(  // list olusturup isim ve icon veriyoruz
                title: Text('Hakkimizda', style: TextStyle(
                    color: Colors.redAccent
                ),),
                leading: Icon(Icons.help, color: Colors.redAccent,),
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          image_carousel,    // tanimlanan widget anasayfada gozukmesini saglamis olduk
          new Padding(padding: const EdgeInsets.all(15.0),
            child: new Text('Kategori'), // cateory ve carousel arasi boslugu ayarlamak icin verildi
          ),
          HorizaontalList(), // horizontal listi bodyde gosterebilmek icin sinifini tanimadik
          new Padding(padding: const EdgeInsets.all(15),
            child: new Text('Kategori Urunleri'),
          ),
          Container(  //urun listesini olusturmak icin verilen kod
            height: 320,
            child: Products(),
          )
        ],
      ),
    );
  }
}
