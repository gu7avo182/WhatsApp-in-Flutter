import 'package:flutter/material.dart';

class listaManual extends StatelessWidget {
  const listaManual({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(0),
      children: [
        Card(   

          elevation: 0,
          //color: Colors.grey[200],
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(0.0)),
            margin: EdgeInsets.all(0),

          child: InkWell(
            splashColor: Colors.grey,
            onLongPress: () {
              print('LONG PRESSED');
            },
            onTap: () {
              print('YOUR TAP'); 
            },
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(10,0,0,0),
                  height: 60,
                  width: 60,
                  decoration:  BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 70,                    
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget> [
                      ListTile(
                        contentPadding: EdgeInsets.fromLTRB(10,0,10,0),
                        title: Row(

                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Text('Nome da Pessoa', style: TextStyle(fontWeight: 
                            FontWeight.bold, fontSize: 20),
                            ),
                            Text('15/04/2021', style: TextStyle(fontSize: 12),)
                          ],
                        ),
                        subtitle: Row(

                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Text('Mensagem que a pessoa enviou', style: TextStyle(),),
                            Container(
                              child: Row(
                                children: [
                                  Icon(Icons.access_alarm_sharp, size: 18,),
                                  Icon(Icons.access_alarm_sharp, size: 18,),
                                ],
                              ))
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        )
      ],
    );
  }
}