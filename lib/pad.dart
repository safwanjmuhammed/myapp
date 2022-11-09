import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: pad()));
}

class pad extends StatelessWidget{
  bool  isChecked = false;
  @override 
  Widget build(BuildContext context){
    return Scaffold(appBar: AppBar(title: const Text("Checkbox listtile demo")
    ),
    body: ListView(children: [const SizedBox(height: 11,),
    Card(child : ListTile(title: const Text("Android"),
    leading: CircleAvatar(radius: 20,backgroundImage: NetworkImage("https://cdn.icon-icons.com/icons2/2235/PNG/512/android_os_logo_icon_134673.png"),),
    trailing: Wrap(children: <Widget>[
    Checkbox(checkColor: Colors.white,value: isChecked, onChanged: (bool? value){setState((){
      isChecked =  value!;
    });})
    ],),
    )),
    
    ],)

    );
  }
}