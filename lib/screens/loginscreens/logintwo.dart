
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Logintwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Logo
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.black,
              ),
            SizedBox(height: 20),
            Text(
              "R7AL",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40),

            // Sign in with Google
            ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black, backgroundColor: Colors.blueAccent,
                elevation: 2,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.grey.shade300),
                ),
              ),
              icon: Image.asset(
                'assets/facbook.png',
                height: 20,
                width: 20,
              ),
              label: Text(
                "Sign in with facbbok",
                style: TextStyle(fontSize: 16),
              ),
            ),

            SizedBox(height: 30),

            // Email/Phone Input Field
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                hintText: "Email or PhoneNumber",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            SizedBox(height: 10),

            // Forget Password
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  showModalBottomSheet(context: context, builder: (context) {
                    return Container(
                      width: double.infinity,
                      child: Column(
                        children: [
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              SizedBox(width: 10,),
                              IconButton(onPressed: (){
                                Navigator.pop(context);
                              }, icon: Icon(Icons.close )),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Container(
                            width: 350,
                            child: TextField(
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.email),
                                  hintText: "Enter Your Email",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15)
                                  )
                              ),
                            ),

                          ),
                          SizedBox(height: 30,),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                  minimumSize: Size(350, 50),
                                  backgroundColor: Colors.blue
                              ),
                              onPressed: (){}, child: Text("Send",style: TextStyle(color: Colors.white),))
                        ],
                      ),
                    );
                  },);
                },
                child: Text(
                  "Forget Password?",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),

            SizedBox(height: 20),

            // Sign In Button
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Center(
                child: Text(
                  "Sign In",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),

            SizedBox(height: 20),

            // Sign Up Link
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account? "),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}