import 'package:flutter/material.dart';

import 'Item1.dart';
import 'item2.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity, // Makes the container expand fully
                  height: 410, // Set the height as needed
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/image1.png"), // Background image
                      fit: BoxFit.cover, // Ensures the image covers the entire container
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.settings, color: Colors.white),
                      Image.asset("images/image2.png", height: 100), // Removed Positioned
                      Icon(Icons.language, color: Colors.white),
                    ],
                  ),
                ),
                Positioned(
                  top: 170,
                  left: 35,
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        child: Image.asset("images/image3.png"),
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Zeina Mohamed",
                              style: TextStyle(fontSize: 15, color: Colors.black)),
                          Text("Tourist", style: TextStyle(color: Colors.white))
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 230,
                  left: 20,
                  child: Container(
                    width: 350,
                    height: 43,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Where to go?",
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 300,
                  left: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Item1(icon: Icons.flight, label: "Flights"),
                      Item1(icon: Icons.hotel, label: "Hotels"),
                      Item1(icon: Icons.train, label: "Train"),
                      Item1(icon: Icons.directions_ferry, label: "Ferry"),
                      Item1(icon: Icons.directions_bus, label: "Bus"),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20), // Added spacing to avoid overlapping
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Natural areas",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: TextButton(
                              onPressed: () {
                                // Define what happens when "See all" is clicked
                              },
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                minimumSize: Size(0, 0),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    "See all",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.blue,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 250, // Fixed height for horizontal scrolling
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Item2(image: "images/image4.png"),
                          Item2(image: "images/image5.png"),
                          Item2(image: "images/image6.png"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Hotels & company recommendation for you",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: TextButton(
                              onPressed: () {
                                // Define what happens when "See all" is clicked
                              },
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                minimumSize: Size(0, 0),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    "See all",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.blue,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 250, // Fixed height for horizontal scrolling
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [
                          Item2(image: "images/image4.png"),
                          Item2(image: "images/image5.png"),
                          Item2(image: "images/image6.png"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
