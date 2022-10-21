import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: HotelDetails(),
    ),
  );
  //www.instagram.com/aslamperumani
}

class HotelDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Image.network(
                  "https://insights.ehotelier.com/wp-content/uploads/sites/6/2020/01/hotel-room-300x300.jpg",
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                  height: MediaQuery.of(context).size.height * 0.4,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 45, left: 8),
                  child: Text("Crown Plaza\nKochi, Kerala",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white)),
                ),
                ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      border: Border.all(
                        color: Colors.white,
                        width: 5.0,
                      ),
                    ),
                    child: Text(
                      "8.4/85 reviews",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                  trailing:
                      Icon(Icons.favorite_border_outlined, color: Colors.white),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RatingBar.readOnly(
                          filledIcon: Icons.star,
                          emptyIcon: Icons.star_border,
                          initialRating: 4,
                          maxRating: 5,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Row(
                              children: [
                                Icon(Icons.location_on, color: Colors.black54),
                                Text(
                                  "8 km to LuLuMall",
                                  style: TextStyle(color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "\$200",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    Text(
                      "/per night",
                      style: TextStyle(color: Colors.black54),
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 14),
              child: MaterialButton(
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none),
                  minWidth: MediaQuery.of(context).size.width * 0.8,
                  color: Colors.pinkAccent,
                  child:
                      Text("Book Now", style: TextStyle(color: Colors.white)),
                  onPressed: () {}),
            ),
            
            
            
            
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: IntrinsicWidth(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Description",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          "Get the celebrity treatment with world-class service at Crowne Plaza Kochi, an IHG Hotel"
                          "The luxurious Crowne Plaza Kochi offers elegant and modern rooms with views of the backwaters and city. Located on the NH 47 Bypass, it features 4 food and beverage options."
                          "Crowne Plaza Kochi is 1.6 mi from Marine Drive and 4.3 mi from Ernakulam Railway Junction. Fort Kochin is 7.5 mi and Bolghatty Island is 9.3 mi from the hotel. Cochin International Airport is 14 mi away. The property is 4.3 mi from Kakkanad Info Park and 0.9 mi from Lake Shore Hospital. The Vyttila Mobility Hub Bus Station is 3.1 mi."
                          "All rooms are equipped with an ergonomic work area, flat-screen satellite TV, iPod dock and mini-bar. They also include tea/coffee making facilities and a safe. Private bathroom comes with a bathtub, shower and bathrobes."
                          "Recreation facilities at the hotel include an outdoor pool and extensive spa treatments. Guests can enjoy a work-out at the 24-hour fitness center or approach the 24-hour reception for assistance."
                          "Mosaic Restaurant features a breakfast buffet and specializes in traditional Kerala, pan-Asian and international cuisines. Trilogi serves cuisines from Travancore, Kochi and Malabar with an interactive show kitchen. An open air Sky Grill serves grills, barbecues and refreshing beverages. Local tea and coffee, light snacks are served at the Aroma Lounge & Deli."),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        selectedItemColor: Colors.pinkAccent,
        unselectedItemColor: Colors.pink,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
