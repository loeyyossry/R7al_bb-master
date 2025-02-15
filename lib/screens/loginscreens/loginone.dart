import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:r7al/providers/AuthenticationService.dart';
import 'package:r7al/screens/homepage/Homepage1.dart';
import '../signupscreens/signupp.dart';

class Loginone extends StatelessWidget {
  var email=TextEditingController();
  var pass=TextEditingController();

  @override
  Widget build(BuildContext context) {
    var p=Provider.of<AuthenticationService>(context);
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
              child: Icon(
                Icons.access_time, // Placeholder for the logo
                color: Colors.white,
                size: 50,
              ),
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
                foregroundColor: Colors.black, backgroundColor: Colors.white,
                elevation: 2,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.grey.shade300),
                ),
              ),
              icon: Image.asset(
                'assets/download.png', // Replace with Google icon asset
                height: 20,
                width: 20,
              ),
              label: Text(
                "Sign in with Google",
                style: TextStyle(fontSize: 16),
              ),
            ),

            SizedBox(height: 30),

            // Email/Phone Input Field
            TextFormField(
              controller: email,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                hintText: "Email or PhoneNumber",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            TextFormField(
              controller: pass,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.password),
                hintText: "Password",
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
                              onPressed: (){
                              p.resetPassword(email: email.text);
                              }, child: Text("Send",style: TextStyle(color: Colors.white),))
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
              onPressed: (){
                p.signIn(email: email.text, password: pass.text);
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(),));
              },
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
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpone()),
                  ),
                    child: Text(
                      'SignUp',
                      style: TextStyle(color: Colors.blue, fontSize: 16),
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