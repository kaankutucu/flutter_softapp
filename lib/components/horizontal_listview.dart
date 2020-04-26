import 'package:flutter/material.dart';

class HorizaontalList extends StatelessWidget {  // kategori iconlarini olusturmak icin kullanilan kod
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal, // iconlarin yatay duzlemde kaydirilma yapmasi icin kullanilan kod
        children: <Widget>[
         Category(
           image_location: 'assets/images/k1.png', // kategori iconlarini olusturmak icin asssetten image cekiyoruz
           image_caption: 'Backend',  //alt aciklama olarak captiondan verileri cekiyoruz.
         ),
          Category(
            image_location: 'assets/images/k2.png', // kategori iconlarini olusturmak icin asssetten image cekiyoruz
            image_caption: 'Mobile', //alt aciklama olarak captiondan verileri cekiyoruz.
          ),
          Category(
            image_location: 'assets/images/k3.png',// kategori iconlarini olusturmak icin asssetten image cekiyoruz
            image_caption: 'AI', //alt aciklama olarak captiondan verileri cekiyoruz.
          ),
          Category(
            image_location: 'assets/images/k4.png',// kategori iconlarini olusturmak icin asssetten image cekiyoruz
            image_caption: 'Hacker', //alt aciklama olarak captiondan verileri cekiyoruz.
          ),
          Category(
            image_location: 'assets/images/k5.png', // kategori iconlarini olusturmak icin asssetten image cekiyoruz
            image_caption: 'Code', //alt aciklama olarak captiondan verileri cekiyoruz.
          ),
        ],
      ),
    );
  }
}


class Category extends StatelessWidget { // kategoriyi olusturmak icin verilen class
  final String image_location;
  final String image_caption;

  Category({this.image_caption, this.image_location});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: InkWell(  // kategori sayfasini olusturmak icin kullanilan class
        onTap: () {},
        child: Container(
          width: 100,  // carousel imagelerin genislikleri verildi
          child: ListTile(  // liste olusturulup assetlerden cekilen imageler eklendi
            title: Image.asset(image_location,  // locationdan verilen imageler burada cagirilmis oldu
            width: 100,
            height: 80,),
            subtitle: Container(
              alignment: Alignment.topCenter,//aligmen vereek hizalanmasini sagladik
              child: Text(image_caption , style: new TextStyle(fontSize: 5, ) ,),
            ),
          ),
        ),
      ),
    );
  }
}
