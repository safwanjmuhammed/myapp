import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
 
  @override
    State<MyHomePage> createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid"),),
      body: Container(child: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView(children: [
          InkWell(
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.green,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.home,size: 20,color: Colors.white,),
              Text("Home",style: TextStyle(color: Colors.white,fontSize: 20),)
            ],),
            ),
          ),
          InkWell(
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.pink,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.notifications,size: 20,color: Colors.white,),
              Text("Notifications",style: TextStyle(color: Colors.white,fontSize: 20),)
            ],),
            ),
          ),
          InkWell(
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blue,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.facebook,size: 20,color: Colors.white,),
              Text("Facebook",style: TextStyle(color: Colors.white,fontSize: 20),)
            ],),
            ),
          ),
         InkWell(             
           child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.cyan,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.search,size: 20,color: Colors.white,),
              Text("Search",style: TextStyle(color: Colors.white,fontSize: 20),)
            ],),
            ),
         ),
         InkWell(
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blueGrey,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.phone,size: 20,color: Colors.white,),
              Text("Phone",style: TextStyle(color: Colors.white,fontSize: 20),)
            ],),
            ),
          ),
          InkWell(              
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.lightBlue,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.settings,size: 20,color: Colors.white,),
              Text("Settings",style: TextStyle(color: Colors.white,fontSize: 20),)
            ],),
            ),
          ),
          InkWell(
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blue,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.alarm,size: 20,color: Colors.white,),
              Text("Alaram",style: TextStyle(color: Colors.white,fontSize: 20),)
            ],),
            ),
          ),
          InkWell(              
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.deepOrange,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.camera,size: 20,color: Colors.white,),
              Text("Camera",style: TextStyle(color: Colors.white,fontSize: 20),)
            ],),
            ),
          ),
        ],
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 5,crossAxisSpacing: 5),
        ),
      ),),
    );
  }
}