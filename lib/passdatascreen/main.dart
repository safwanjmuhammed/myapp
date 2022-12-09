import 'package:flutter/material.dart';
import 'package:flutter_application_1/passdatascreen/Detail.dart';
import 'DataModel.dart';


void main() {
    runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  ProductListScreen(),
      routes: {
       "single-product": (context) =>  SingleProductScreen(),
      },
    );
  }
}