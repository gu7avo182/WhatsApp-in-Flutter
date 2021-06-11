import 'package:flutter/material.dart';

class Camera extends StatelessWidget {
  const Camera();

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
         slivers: <Widget>[
           SliverAppBar(
             expandedHeight: 200,
             floating: false,
             flexibleSpace: FlexibleSpaceBar(
              background: Container(color: Colors.lightGreen,),
              title: Text('APPbAR EM CAMERA'),
             ),
           ),
          SliverToBoxAdapter(
             child: SizedBox(
               child: Container(
                 height: 500,
                 width: 500,
                 color: Colors.red,
               ),
             )
           )
         ],
    );
  }
}