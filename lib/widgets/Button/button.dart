import 'package:flutter/material.dart';

class Button extends StatefulWidget {

  final int variavel;
  const Button({ Key? key, required this.variavel}) : super(key: key);
  @override
   _ButtonState createState(){  
    print('O WIDGET FOI CRIADO');                                     
    return _ButtonState();                                           
  }
}

class _ButtonState extends State<Button> {


  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
          onPressed: () {
          },
          child: getIcon(widget.variavel),
      backgroundColor: Color(0XFF128c7e),          
      );
  }

    Icon getIcon(int currentIndex){
    switch (currentIndex) {
      case 0  : return Icon(Icons.camera);
      case 1  : return Icon(Icons.message);
      case 2  : return Icon(Icons.alarm);
      case 3  : return Icon(Icons.call);
      default : return Icon(Icons.ac_unit);
    }
  }
}