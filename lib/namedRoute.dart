import 'dart:js';

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: 'Named Routes',
    initialRoute: '/',
    routes: {
      '/ ': (context) => firstRoute(),
      '/second'  : (context) => secondRoute(),
      '/third'  : (context) =>  thirdRoute(),
     },
  ));
}
class fistRoute extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("first route"),
        backgroundColor: Colors.green,
      ),
    )
  }
}