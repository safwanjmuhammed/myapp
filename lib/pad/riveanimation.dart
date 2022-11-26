import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main(){
  runApp(MaterialApp(
    home:rive()
  ));
}
class rive extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: RiveAnimation.asset("assets/rive/ri.riv"),
      ),
    );
  }

}