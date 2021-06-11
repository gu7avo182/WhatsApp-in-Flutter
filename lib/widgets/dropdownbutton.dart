import 'package:flutter/material.dart';

class Dropbutton extends StatefulWidget {
  const Dropbutton({ Key? key }) : super(key: key);

  @override
  _DropbuttonState createState() => _DropbuttonState();
}

class _DropbuttonState extends State<Dropbutton> {
    String dropdownValue = 'One';
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      items: [
        
      ],
    );
  }
}