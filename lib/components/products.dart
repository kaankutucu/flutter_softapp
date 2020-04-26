import 'package:flutter/material.dart';

class Products extends StatefulWidget {  // urunleri bodyde bastirmak icin olusturlan main dosyasi
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {  // product listesindeki urunleri dinamik olarak cekmek icin verilen kod
  var product_list = [
  {
      "name": "C#",  // product ismini tanimliyoruz
      "picture" : "assets/images/p1.jpeg",  // product image tanimliyoruz
      "old_price": "120",
      "prie" : "20",
    },
    {
      "name": "Java",  // product ismini tanimliyoruz
      "picture" : "assets/images/p2.jpg",  // product image tanimliyoruz
      "old_price": "120",
      "prie" : "20",
    },
    {
      "name": "SQL",  // product ismini tanimliyoruz
      "picture" : "assets/images/p3.jpg",  // product image tanimliyoruz
      "old_price": "120",
      "prie" : "20",
    },
    {
      "name": "Flutter",  // product ismini tanimliyoruz
      "picture" : "assets/images/p4.png",  // product image tanimliyoruz
      "old_price": "120",
      "prie" : "20",
    },
    {
      "name": "Dart",  // product ismini tanimliyoruz
      "picture" : "assets/images/p5.jpg",  // product image tanimliyoruz
      "old_price": "120",
      "prie" : "20",
    },
    {
      "name": "Kotlin",  // product ismini tanimliyoruz
      "picture" : "assets/images/p6.png",  // product image tanimliyoruz
      "old_price": "120",
      "prie" : "20",
    },

    {
      "name": "Swift",  // product ismini tanimliyoruz
      "picture" : "assets/images/p7.jpg",  // product image tanimliyoruz
      "old_price": "120",
      "prie" : "20",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(  // olusan gridwiev ile urunlerin body de gozukmesini sagliyoruz
      itemCount: product_list.length, // product kadar donmesi icin verdigimiz kod
      gridDelegate: new   SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), // olusturulan dinamik description fonksiyonlarini cekmek icin verilen kod
      itemBuilder: (BuildContext context, int index){
        return Single_prod(
            prod_name: product_list [index] ['name'],  // singleprod classinda detailleri dondurereek dinamik bir sekilde ekrana basilmasini sagliyoruz
            prod_picture: product_list [index] ['picture'], // singleprod classinda detailleri dondurereek dinamik bir sekilde ekrana basilmasini sagliyoruz
            prod_old_price: product_list [index] ['old_price'],// singleprod classinda detailleri dondurereek dinamik bir sekilde ekrana basilmasini sagliyoruz
            prod_price: product_list [index] ['price'],// singleprod classinda detailleri dondurereek dinamik bir sekilde ekrana basilmasini sagliyoruz
        );
        });
  }
}

class Single_prod extends StatelessWidget { // verilen classta final konutu ile urunleri dinamik olarak cekiyoruz
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: (){},
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
                ),
              ),
              child: Image.asset(prod_picture,
                fit: BoxFit.cover,),),
          ),
        ),
      ),
    );
  }
}

