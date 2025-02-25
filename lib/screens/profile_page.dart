import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Profile Screen",style: TextStyle(color: Colors.white))),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset('assets/Profile.png', width: 300,height: 300,)),
          SizedBox(height: 20),
         Text("This is Your profile !",style: TextStyle(color: Colors.white,fontSize: 30) )
        ],
      ),
    );
  }
}
