

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: hoteldetails(),
  ));
}
class hoteldetails extends StatelessWidget{
  final String image = "assets/images/bed.jpg";
  @override  
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
      children: <Widget>[
        Container(
          foregroundDecoration: const BoxDecoration(
            color: Colors.black26
          ),
          height: 400,
          child: Image.asset(image,fit: BoxFit.cover)),
          SingleChildScrollView(
          padding: const EdgeInsets.only(top:16.0,bottom:20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 250),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text("SUNSET MARQUIE \nEAST HOLLYWOOD, LA",
                style: TextStyle(color: Colors.white, fontSize: 28.0,fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: <Widget>[const SizedBox(width: 16.0),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 16.0,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: const Text(
                        "9.4/525 reviews",
                        style: TextStyle(color: Colors.white, fontSize: 11.0,),
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      color: Colors.white,
                      icon: const Icon(Icons.favorite_border),
                      onPressed: () {},
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(32.0),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: const <Widget>[
                                    Icon(
                                      Icons.star,
                                      color: Colors.red
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.red,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.red,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.red,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.red,
                                    ),
                                  ],
                                ),
                                const Text.rich(TextSpan(children: [
                                  WidgetSpan(
                                    child: Icon(Icons.location_on, size: 16.0, color: Colors.grey,)
                                  ),
                                  TextSpan(
                                    text: "4 km to Hollywood"
                                  )
                                ]), style: TextStyle(color: Colors.grey, fontSize: 12.0),)
                              ],
                            ),
                          ),
                          Column(
                            children: const <Widget>[
                              Text("\$ 400", style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0
                              ),),
                              Text("/per night",style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.grey
                              ),)
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 30.0),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)), backgroundColor: Colors.red,
                            padding: const EdgeInsets.symmetric(
                              vertical: 16.0,
                              horizontal: 32.0,
                            ),
                          ),
                          child: const Text("Book Now", style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.white
                          ),),

                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      Text("Description".toUpperCase(), style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.0
                      ),),
                      const SizedBox(height: 10.0),
                      const Text(
                          "Located just minutes from Los Angeles International Airport, is the perfect launchpad for your next So Cal visit. Known for its carefree, beach town atmosphere, it is centrally located to many LA theme parks and attractions. Whether you’re going to Disneyland, Universal Studios, Knotts Berry Farm or the Aquarium of the Pacific, Redondo Beach is within a 25 - 40 minute drive.After a thrilling day, head back to the beach to see an unbeatable sunset. There are luxury hotels, comfortably elegant inns, budget-friendly seaside motels, business friendly suites, gastro pubs, an eclectic mix of restaurants and quaint shops, which make Redondo Beach a charming, relaxing, classic California destination for all to enjoy. Come experience a romantic seaside getaway, family fun vacation, or special celebration with friends at any of our fun filled hotels. Explore your options and book today.",
                            textAlign: TextAlign.justify, style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 14.0
                          ),),
                      const SizedBox(height: 10.0),
                      const Text(
                          "Sunset marquie, East Hollywood, LA", textAlign: TextAlign.justify, style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 14.0
                          ),),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              title: const Text("DETAILS",style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.normal
              ),),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: BottomNavigationBar(
              backgroundColor: Colors.white54,
              elevation: 0,
              selectedItemColor: Colors.black,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: "Search"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_border),
                    label: "Favorites"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: "Settings"),
              ],
            ),
          )
        ],
      ),
    );
  }
}

          