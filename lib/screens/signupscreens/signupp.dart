import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../loginscreens/loginone.dart';

class SignUpone extends StatelessWidget {
  var email=TextEditingController();
  var pass=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
                padding: EdgeInsets.all(20),
                child: Text(
                  'R7AL',
                  style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              _buildTextField(Icons.email, "Email or PhoneNumber"),
              _buildTextField(Icons.lock, "Password", isPassword: true),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 80),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: () {},
                child: Text("Sign Up", style: TextStyle(color: Colors.white, fontSize: 16)),
              ),
              SizedBox(height: 20),
              Text("or", style: TextStyle(color: Colors.grey)),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildSocialButton(FontAwesomeIcons.google, Colors.red),
                  SizedBox(width: 10),
                  _buildSocialButton(FontAwesomeIcons.facebook, Colors.blue),
                  SizedBox(width: 10),
                  _buildSocialButton(FontAwesomeIcons.apple, Colors.black),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?"),
                  TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Loginone()),
                    ),
                    child: Text('Login',style:TextStyle(color: Colors.blue),),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(IconData icon, String hint, {bool isPassword = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: Colors.grey),
          hintText: hint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }

  Widget _buildSocialButton(IconData icon, Color color) {
    return CircleAvatar(
      backgroundColor: color,
      radius: 20,
      child: Icon(icon, color: Colors.white),
    );
  }
}
