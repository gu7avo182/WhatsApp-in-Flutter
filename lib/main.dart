import 'package:flutter/material.dart';
import 'package:whatsapp/page.dart';

import 'package:whatsapp/widgets/camera.dart';
import 'package:whatsapp/widgets/chamadas.dart';
import 'package:whatsapp/widgets/conversas.dart';
import 'package:whatsapp/widgets/status.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Pageone(),  
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return  DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child:  AppBar(),
        ),
         body: TabBarView(
           children: [
            Camera(),
            Conversas(),
            Status(),
            Chamadas(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            },
          child: const Icon(Icons.navigation),
          backgroundColor: Colors.green,          
        ),
      ),
    );
  }
}
