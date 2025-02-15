import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Travel Booking App'),
        actions: [
          IconButton(icon: Icon(Icons.person), onPressed: () {}),
        ],
      ),
      body: Column(
        children: [
          // Top navigation bar
          Container(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Home'),
                Text('Flights'),
                Text('Hotels'),
                Text('Train'),
                Text('Ferry'),
                Text('Bus'),
              ],
            ),
          ),
          // User profile section
          ListTile(
            leading: CircleAvatar(
              child: Text('ZM'),
            ),
            title: Text('Zeina Mohammed'),
            subtitle: Text('Tourist'),
          ),
          // Search bar
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Where to go?',
              ),
            ),
          ),
          // Main content
          Expanded(
            child: Row(
              children: [
                // Left section - Natural areas
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Natural areas'),
                      // Destination cards
                      // Add cards for 'Mount Bromo', 'Labengki Sombori', and 'Sailing Kom'
                    ],
                  ),
                ),
                // Right section - Hotels & recommendations
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hotels & company recommendation for you'),
                      // Hotel card for 'Sofitel Winter Palace Luxor'
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notification'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}