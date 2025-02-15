import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class loey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0,
        leading: Icon(Icons.menu, color: Colors.white),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Where to go?",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryButton(title: "Flights"),
                  CategoryButton(title: "Hotels"),
                  CategoryButton(title: "Train"),
                  CategoryButton(title: "Bus"),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "Natural areas",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  AttractionCard(name: "Mount Bromo", price: "150\$", image: "assets/mount_bromo.jpg"),
                  AttractionCard(name: "Labengki Sombori", price: "250\$", image: "assets/labengki.jpg"),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "Hotels & Company Recommendations",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            HotelCard(
              name: "Sofitel Winter Palace Luxor",
              price: "\$500/night",
              image: "assets/hotel.jpg",
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String title;
  CategoryButton({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Chip(
        label: Text(title),
        backgroundColor: Colors.teal,
        labelStyle: TextStyle(color: Colors.white),
      ),
    );
  }
}

class AttractionCard extends StatelessWidget {
  final String name;
  final String price;
  final String image;
  AttractionCard({required this.name, required this.price, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black.withOpacity(0.5),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: TextStyle(color: Colors.white, fontSize: 16)),
              Spacer(),
              Text(price, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}

class HotelCard extends StatelessWidget {
  final String name;
  final String price;
  final String image;
  HotelCard({required this.name, required this.price, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              child: Image.asset(image, height: 150, width: double.infinity, fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text(price, style: TextStyle(fontSize: 14, color: Colors.teal)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
