import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
       return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
           Padding
               (padding: EdgeInsets.symmetric(
                horizontal: 20,  ),
           child: Row(
              children:  [
             Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(color: Colors.grey,
              borderRadius: BorderRadius.circular(15),              
              ),
              child: TextField(decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Search Product",
            prefixIcon: Icon(Icons.search),
            suffixIcon: Icon(Icons.mic),       
            )),
             ),
      Stack(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            width: 46,
            height: 46,
            decoration: BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle, 
              
            
                ),
            
          ),
        ],
      )
            ],
            ),
           )
          ],
        )
      )
      ) ;   
  }


  
}

