import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/conversas/lista_automatica.dart';
import 'package:whatsapp/widgets/conversas/lista_manual.dart';

class Conversas extends StatelessWidget {
  const Conversas({ Key? key }) : super(key: key);

  Widget build(BuildContext context,) {

    return Container(
      child: listaAutomatica()
    );
  }
}