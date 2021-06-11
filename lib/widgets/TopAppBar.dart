import 'package:flutter/material.dart';

class TopAppBar extends StatelessWidget {
  const TopAppBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    double widthtotal = MediaQuery.of(context).size.width;

    return AppBar(
    backgroundColor: Color(0xFF075e54),
    title: Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: <Widget>[
          const Text('WhatsApp'),
          Container(
            margin: EdgeInsets.fromLTRB(100, 0, 0, 0),
            child: Row(children:[

            IconButton(
              icon: const Icon(Icons.search, size: 30,),
              onPressed: () {         
              },
            ),

            IconButton(
              icon: const Icon(Icons.more_vert, size: 30,),
              onPressed: () {         
              },
            ),
            ]
            )
          ),
        ]
      ),
    ),

    bottom: TabBar(
    labelPadding: EdgeInsets.symmetric(horizontal: 0.0),
    isScrollable: true,
    indicatorWeight: 5.0,
    indicatorColor: Color(0xFF25d366),

                tabs: <Widget> [
          
                Tab(child: Container(
    padding: EdgeInsets.fromLTRB(5,0,10,0),
    child:Icon(Icons.camera_alt, size: 30,)
    )
                ),

                Container(
    child: Tab(
      text: "CONVERSAS"),
      width: (widthtotal/3) - 15),

                Container(
    child: Tab(
      text: "STATUS"),
      width: (widthtotal/3) - 15),

                Container(
    child: Tab(
      text: "CHAMADAS"),
      width: (widthtotal/3) - 15),
              ],         
            ),
          );
  }
}