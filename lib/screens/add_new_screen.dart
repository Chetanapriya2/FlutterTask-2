import 'package:flutter/material.dart';

class AddNewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(title: Text("Add New Screen", style: TextStyle(color: Colors.white)),backgroundColor: Colors.black,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: IconButton(
              icon: Icon(Icons.add_circle_outline, color: Colors.white60, size: 300),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Added New media!')),
                );
              },
            ),
          ),
          Center(child:
            Text("Click to Add new media",style: TextStyle(color: Colors.white,fontSize: 30)),)
        ],
      ),
    );
  }
}
