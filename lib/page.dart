import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/dropdownbutton.dart';

void main() =>runApp(Pageone());

class Pageone extends StatefulWidget {

  @override
  _PageoneState createState() => _PageoneState();
}

class _PageoneState extends State<Pageone> with  SingleTickerProviderStateMixin{

  late TabController _tabController;
  late ScrollController _scrollController;


    // ignore: must_call_super
    void initState(){
      //EXCLUSIVO PARA TAB E TAB CONTROLER
    _tabController = new TabController(length: 4, vsync: this);
    //CONTROLA WIDGETS ROLAVEIS
    _scrollController = new ScrollController();
  }

  @override
  Widget build(BuildContext context) {

    double widthtotal = MediaQuery.of(context).size.width;
    return MaterialApp(

    debugShowCheckedModeBanner: false,

    home: Scaffold(
    body:NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (BuildContext context, bool innerBoxScrolled){

          return <Widget> [
            SliverAppBar(         
              stretch: true,
              actions: [

                IconButton(
                  icon: Icon(Icons.search, size: 30,),
                  onPressed: () { 
                          
                  },
                ),

                IconButton(
                  icon: Icon(Icons.more_vert, size: 30,),
                  onPressed: () { 
                  },

                ),
              ],

              flexibleSpace: FlexibleSpaceBar(
                stretchModes: [
                ],
              ),

              pinned: true,
              floating: true,
              centerTitle: false,
              backgroundColor: Color(0xFF075E54),

              title: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: <Widget>[

                  const Text('WhatsApp'),
                  Container(
                    margin: EdgeInsets.fromLTRB(100, 0, 0, 0),
                    child: Row(children:[
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
                controller: _tabController,

              tabs:[

              Tab(child: Container(
                padding: EdgeInsets.fromLTRB(5,0,10,0),
                child:Icon(Icons.camera_alt, size: 30,)
                )),

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

                ]
              ),
            ),
          ];
        },
        body: Stack(
                children: [

              Positioned(
                top: 1,
                right: 1,
                child: Container(
                height: 300,
                width:150,
                color: Colors.red[500],
                ),
              ),  

              TabBarView(
                controller: _tabController,
                children: [

              Container(child: Text('Camera')),
              Text('Conversas'),
              Text('Status'),
              Text('Chamadas'),
                  ],
                ),
              ]
            ),
          ),
      ),
    );
  }
}