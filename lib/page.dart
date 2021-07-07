import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/Button/button.dart';
import 'package:whatsapp/widgets/Button/menu3points.dart';
import 'package:whatsapp/widgets/conversas/conversas.dart';

class Pageone extends StatefulWidget {

  @override
   _PageoneState createState(){  
    print('A PAGINA FOI CRIADA');                                     
    return _PageoneState();                                           
  }
}

class _PageoneState extends State<Pageone> with SingleTickerProviderStateMixin {

      void createdController(){
        _tabController = new TabController(length: 4, vsync: this);
        _scrollController = new ScrollController();
      }

      void atual(){
        print('O VALOR ATUAL DO INDEX É: ${_tabController.index}');
      }

      double construido = 0.0;

      void construirPage(int valor){
      construido++;
      print('A PAGINA FO CONSTRUIDA $construido vezes');
    }

      double x = 0.0;
      double y = 0.0;

    void _updateLocation(PointerEvent details) {
    setState(() {
      x = details.position.dx;
      y = details.position.dy;
    });
  }
  late TabController _tabController;
  late ScrollController _scrollController;

  Icon cusIcon        = Icon(Icons.search);
  Widget cusSearchBar = Text("WhatsApp");
  Widget menuBar      = Icon(Icons.more_vert);
  Color topBackground = Color(0xFF075E54);

    // ignore: must_call_super
    void initState(){
    createdController();
  }

  @override
  void didChangeDependencies(){
    super.didChangeDependencies();
    print('A PAGINA FOI ATUALIZADA');
  }

  @override
  Widget build(BuildContext context) {

    double widthtotal = MediaQuery.of(context).size.width;
    atual();
    return Scaffold(

    floatingActionButton: Button(variavel: _tabController.index),
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

                Menu()  //AQUELE MENU DE 3 POINTINHOS NO TOPO

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
                onTap: (value) {
                  print('A janela Mudou');
                  atual();
                },
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
                Listener(
                  onPointerMove: _updateLocation,
            child: TabBarView(  
              controller: _tabController,
              children: [
                Container(child: Text('Camera')),
                Conversas(),
                Text('Status'),
                Text('Chamadas'),
                  ],
                ),
              ),
            ]
          ),
        ),
    );
  }
}
