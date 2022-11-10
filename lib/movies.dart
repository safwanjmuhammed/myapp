import 'dart:core';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
  home: movies()));
  
}
class movies extends StatelessWidget {

  var img =["https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_.jpg",
    "https://upload.wikimedia.org/wikipedia/en/thumb/9/99/Dora_the_Explorer_%28character%29.webp/190px-Dora_the_Explorer_%28character%29.webp.png",
    "https://m.media-amazon.com/images/M/MV5BMTE0YWFmOTMtYTU2ZS00ZTIxLWE3OTEtYTNiYzBkZjViZThiXkEyXkFqcGdeQXVyODMzMzQ4OTI@._V1_FMjpg_UX1000_.jpg",
    "https://upload.wikimedia.org/wikipedia/en/0/00/Us_%282019%29_theatrical_poster.png"];






  List<String> m = ["Avengers:End Game","Dora and the lost city of God","Captain Marvel","Us"];
  List<String> moviedetail = ["Action,Adventurse","Comedy,Action","Action,Sci-Fi","Action,Thriller"]; 
  List<int> year = [2019,2019,2020,2018];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    
      appBar: AppBar(title: Text("MOVIES")),
      body: Container( 
        child: ListView.builder(
          itemCount: m.length,
          itemBuilder: ( cntx , index) {
            return ListTile(
              leading: CircleAvatar(backgroundImage: NetworkImage(img[index]),),
              //child:Text(m[index][0]),),                
                    title: Text(m[index]),
                    subtitle: Text(moviedetail[index]),
                    trailing: Text(year[index].toString()),
                      );
          }            ),  ),   );
  }}