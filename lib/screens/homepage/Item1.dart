import 'package:flutter/material.dart';

class Item1 extends StatelessWidget {
   Item1({required this.icon,required this.label});
   IconData? icon;
   var label;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.teal[100], // Light teal background
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: Colors.teal[900], // Dark teal icon color
              size: 30,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.teal[900],
            ),
          ),
        ],
      ),
    );
    }
  }
