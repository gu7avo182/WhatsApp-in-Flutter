import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Conversas extends StatelessWidget {
  const Conversas({ Key? key }) : super(key: key);

  Widget build(BuildContext context, ) {

    return Container(
      child: ListView.builder(

        itemCount: 1,
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(0),
        dragStartBehavior: DragStartBehavior.start,
        //itemExtent: 70,
        itemBuilder: (BuildContext context, int index){

          return Card(          
              elevation: 0,
              color: Colors.grey[200],
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(0.0)),
                margin: EdgeInsets.all(0),

              child: InkWell(
                splashColor: Colors.grey,
                onTap: () {              
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
                                  color: Colors.blue,
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
            );
          }
        ),
    );
  }
}