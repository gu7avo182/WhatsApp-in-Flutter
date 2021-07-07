import 'package:flutter/material.dart';
import 'package:whatsapp/page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Pageone(),  
    );
  }
}
