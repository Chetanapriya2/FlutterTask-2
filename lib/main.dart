import 'package:flutter/material.dart';
//import 'package:device_preview/device_preview.dart';
import 'BottomNavBar/bottomnav.dart';



/*void main() => runApp(
  DevicePreview(
    enabled: true,
    builder: (context) => BottomNavBar(),
  ),
);*/

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}

