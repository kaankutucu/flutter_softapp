import 'package:flutter/material.dart';
import 'home.dart';

void main (){
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false, //debug iconu kaldirmak icin kullanildi
      home:HomePage()    //ugyulama acildiginda gorulmesini istedigimiz ekrani burada tanimliyoruz
      ),
    );
}

