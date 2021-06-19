import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/conversas.dart';

void main() =>runApp(Pageone());

class Pageone extends StatefulWidget {

  @override
  _PageoneState createState() => _PageoneState();
}

class _PageoneState extends State<Pageone> with  SingleTickerProviderStateMixin{

  late TabController _tabController;
  late ScrollController _scrollController;
  Icon cusIcon = Icon(Icons.search);

  Widget cusSearchBar = Text("WhatsApp");
  Widget menuBar = Icon(Icons.more_vert);

  Color topBackground = Color(0xFF075E54);

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

    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: const Icon(Icons.message),
      backgroundColor: Color(0XFF128c7e),          
      ),

    body:NestedScrollView(
      
        controller: _scrollController,
        headerSliverBuilder: (BuildContext context, bool innerBoxScrolled){

          return <Widget> [
            SliverAppBar(     
                title: cusSearchBar,    
              stretch: false,
              actions: <Widget> [

                IconButton(
                  icon: cusIcon,
                  onPressed: () { 
                    setState(() {
                      if(this.cusIcon.icon == Icons.search){
                        this.cusIcon = Icon(Icons.cancel);

                        this.cusSearchBar = TextField(
                          textInputAction: TextInputAction.go,
                          style: TextStyle(
                            backgroundColor: Colors.red,
                            color: Colors.white,
                            fontSize: 16.00,
                          ),
                        );
                        
                      } else{
                        this.cusIcon = Icon(Icons.search);
                        this.cusSearchBar = Text('WhatsApp');
                      }
                    });
                  },
                ),

              PopupMenuButton(
                color: Colors.green,
                padding: EdgeInsets.only(right: 50),         
                itemBuilder: (context) =>[
                  PopupMenuItem(child: Row(children: [
                    Icon(Icons.search, color: Colors.black,),
                      ]
                    ),
                  ),

                  PopupMenuItem(child: Row(children: [
                    Icon(Icons.search, color: Colors.black,),
                      ]
                    ),
                  )
                ],
                child: Icon(Icons.more_vert),
              ),

            ],

              flexibleSpace: FlexibleSpaceBar(
                stretchModes: [
                ],
              ),

              pinned: true,
              floating: true,
              centerTitle: false,
              backgroundColor: topBackground,  

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

              TabBarView(
                controller: _tabController,
                children: [

              Container(child: Text('Camera')),
              Conversas(),
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