import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class listaAutomatica extends StatefulWidget {
  const listaAutomatica({ Key? key }) : super(key: key);

  @override
  _listaAutomaticaState createState() => _listaAutomaticaState();
}

class _listaAutomaticaState extends State<listaAutomatica> {

  final List<Map> data = List.generate(5, (index) => {'isSelected': false});

  getIcon(index){
    if (index == true) {
      return Icon(Icons.volume_off_rounded, size: 18);
    } else {
      return SizedBox(width: 18,);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      
    itemCount: data.length,
    scrollDirection: Axis.vertical,
    padding: EdgeInsets.all(0),
    dragStartBehavior: DragStartBehavior.start,
    //itemExtent: 70,

    itemBuilder: (BuildContext context, int index,){

      return Card(
          elevation: 0,
          color:  data[index]['isSelected'] == true ? 
                  //SE VERDADEIRO
                  Colors.grey[50] : 
                  //SE FALSO
                  Colors.white,
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(0.0)),
            margin: EdgeInsets.all(0),

          child: InkWell(
            splashColor: Colors.grey,
            onLongPress: () { 
              setState(() {
                data[index]['isSelected'] = !data[index]['isSelected'];
              });
            },
            onTap: () {
              setState(() {
                for (var i = 0; i!= data.length; i++){
                  if(data[i]['isSelected'] == false){
                    data[index]['isSelected'] = !data[index]['isSelected'];
                  }else{

                  }
                }
              });
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
                                  Icon(Icons.circle, size: 18, color: Colors.green,),
                                  getIcon(data[index]['isSelected']),
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
    );
  }
}