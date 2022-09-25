import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/models/status_model.dart';


class statuspage extends StatelessWidget {
  const statuspage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       
         ListTile(
            leading:
             CircleAvatar(backgroundColor: Colors.blue,
             backgroundImage: AssetImage('images/no_img.png'),),

             title:Text( 'My Status',
             style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle:Text( 'Tap to Add status update',
             style: TextStyle(color: Colors.grey, fontSize: 15),),
             onTap: (){
               print('My status clicked');
             }
            
           ),
           Divider(),
           Padding(padding: EdgeInsets.only(left: 20),
           child: Align(alignment: Alignment.topLeft,
           child: Text('Recent Update',
           textAlign: TextAlign.left,
           style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold,
           fontSize: 15),
           ),
           
           ),
           ),
           Flexible(child: ListView.builder(
            itemCount: Statusdata.length,
            itemBuilder: (context, i ) => Column(
              children: [
                ListTile(
                   leading:
             CircleAvatar(backgroundColor: Colors.blue,
             backgroundImage: AssetImage(Statusdata[i].avatar),),

             title:Text( Statusdata[i].name,
             style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle:Text( Statusdata[i].time,
             style: TextStyle(color: Colors.grey, fontSize: 15),),
             
            
                )
              ],
            ) ),)
      ],
    );
    
  }
}