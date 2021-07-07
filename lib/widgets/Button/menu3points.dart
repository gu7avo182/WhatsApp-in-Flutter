import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return PopupMenuButton(
      color: Color(0xFF075E54),
      padding: EdgeInsets.only(right: 50),         
      itemBuilder: (context) =>[
        
        PopupMenuItem(child: Row(children: [
          Text('Novo grupo', style: TextStyle(color: Colors.white, fontSize: 16))
            ]
          ),
          value: SimpleDialog(
            title: Text('titulo'),
            children: [
              Text('Corpo')
            ],
          )
        ),

        PopupMenuItem(child: Row(children: [
          Text('Novo trasnmissão', style: TextStyle(color: Colors.white, fontSize: 16))
            ]
          ),
        ),

        PopupMenuItem(child: Row(children: [
          Text('Novo trasnmissão', style: TextStyle(color: Colors.white, fontSize: 16))
            ]
          ),
        ),
        PopupMenuItem(child: Row(children: [
          Text('WhatsApp Web', style: TextStyle(color: Colors.white, fontSize: 16))
            ]
          ),
        ),

        PopupMenuItem(child: Row(children: [
          Text('Mensagens favoritas', style: TextStyle(color: Colors.white, fontSize: 16))
            ]
          ),
        ),
        
        PopupMenuItem(child: Row(children: [
          Text('Configurações', style: TextStyle(color: Colors.white, fontSize: 16))
            ]
          ),
        )

      ],
      child: Icon(Icons.more_vert),
    );
  }
}