// import 'package:flutter/material.dart';
// import 'package:flutter_whatsapp/pages/call_page.dart';
// import 'package:flutter_whatsapp/pages/chatpage.dart';
// import 'package:flutter_whatsapp/pages/status_page.dart';


// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

 

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
//       late TabController _tabController;
//     final List<Tab> Topstab = <Tab>[
//       Tab(icon: Icon(Icons.camera_alt)),
//       Tab(text: 'CHATS',),
//       Tab(text: 'STATUS',),
//       Tab(text: 'CALLS',),
//     ];
//   @override
//   void initState() {
//     _tabController = TabController(length: 4,initialIndex: 1, vsync: this)
//     ..addListener(() { });
//     super.initState();

//   }
//   Widget build(BuildContext context) {
 
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.green,
//         title: Text(widget.title),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.search), onPressed: (){
//             print('search button clicked');
//           }, ),
//            IconButton(
//             icon: Icon(Icons.more_vert), onPressed: (){
//             print('Three Dot button clicked');
//           }, ),
//         ],
//         bottom: TabBar(
//           controller: _tabController,
//           indicatorColor: Colors.white ,
//           tabs: Topstab
//         ),
//       ),
//       body: TabBarView(
//         controller: _tabController,
//         children: [
//           Text('Camera'),
//           chatpage(),
//           statuspage(),
//           callPage(),

//       ],),
//       floatingActionButton: _getICN(),
//       );
//   }
//   _getICN(){
//      if( _tabController.index == 1){
//       return FloatingActionButton(
//         backgroundColor: Colors.greenAccent,
//         child: Icon(Icons.message,
//         color: Colors.white,),
//         onPressed: () => print('open chat'));
//     }
  
//   } 
  

// }




import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/pages/call_page.dart';
import 'package:flutter_whatsapp/pages/chatpage.dart';
import 'package:flutter_whatsapp/pages/status_page.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
 late TabController _tabController;
  final List<Tab> topTabs = <Tab>[
    Tab(icon: Icon(Icons.camera_alt)),
    Tab(text: 'CHATS'),
    Tab(text: 'STATUS'),
    Tab(text: 'CALLS'),
  ];

  @override
  void initState() {
    _tabController = TabController(length: 4, initialIndex: 1, vsync: this)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('Search Button Clicked');
              }),
          IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                print('Three Dot Button Clicked');
              })
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: topTabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Text('Camera'),
          chatpage(),
         statuspage(),
          callPage(),
        ],
      ),
      floatingActionButton: _getFAB(),
    );
  }

  _getFAB() {
    if (_tabController.index == 1) {
      return FloatingActionButton(
          backgroundColor: Colors.green,
          child: Icon(
            Icons.message,
            color: Colors.white,
          ),
          onPressed: () => print('Open Chat'));
    } else if (_tabController.index == 2) {
      return FloatingActionButton(
          backgroundColor: Colors.green,
          child: Icon(
            Icons.camera_alt,
            color: Colors.white,
          ),
          onPressed: () => print('Open Camera'));
    } else if (_tabController.index == 3) {
      return FloatingActionButton(
          backgroundColor: Colors.green,
          child: Icon(
            Icons.call,
            color: Colors.white,
          ),
          onPressed: () => print('Open Call'));
    } else {
      return null;
    }
  }
}