import 'package:flutter/material.dart';

class Item2 extends StatelessWidget {
   Item2({super.key,required this.image});
   var image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 250,
      child: Card(
        child: Column(
          children: [
            Container(
              width: double.infinity, //Makes the container expand fully
              height: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                image: DecorationImage(
                  image: AssetImage(image), // Background image
                  fit: BoxFit.cover, // Ensures the image covers the entire container
                ),
              ),),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Mount Bromo",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold)),
                      Text("Volcano in East Java",style: TextStyle(fontSize: 10,color: Colors.green[400]),)
                    ],
                  ),
                ),
                SizedBox(width: 12,),
                Icon(Icons.bookmark_border_outlined,color: Colors.green[500],)
              ],
            ),
            Row(
              children: [
                Icon(Icons.star,color: Colors.yellow,),
                Text("4.5",style: TextStyle(fontSize: 15),)
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Column(
                  children: [
                    Text("Start from",style: TextStyle(fontSize: 10),),
                    Row(
                      children: [
                        Icon(Icons.attach_money_sharp,size: 18,),
                        Text("150/pax"),

                      ],
                    ),

                  ],
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(20, 25),
                      backgroundColor: Colors.green[800]
                    ),
                    onPressed: (){},
                    child: Text("All Information",style: TextStyle(fontSize: 7,color: Colors.white),))
              ],
            )
          ],
        ),
      ),
    );
  }
}
