import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:myapp/pad.dart';

void main(){
  runApp(MaterialApp(
    home: Gradientt(),
  ));
}

class Gradientt extends StatefulWidget{
  @override 

  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [Colors.blue,Colors.white,Colors.pink,Colors.yellow]
          ),
        ),
      ),
    );
  }
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}