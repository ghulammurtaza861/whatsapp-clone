

import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/models/chat_models.dart';
import 'package:flutter_whatsapp/models/chatdetails.dart';

    class chatpage extends StatefulWidget {
  const chatpage({Key? key}) : super(key: key);

  @override
  State<chatpage> createState() => _chatpageState();
}

class _chatpageState extends State<chatpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: Chatdata.length,
        itemBuilder: (context, i) {
          var s = 'images/no_img.png';
          return Column(
          children: [
            Divider(height: 10,),
           ListTile(
            leading:
             CircleAvatar(backgroundColor: Colors.blue,
             backgroundImage: AssetImage(Chatdata[i].avatar),),

             title:Text( Chatdata[i].name,
             style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle:Text( Chatdata[i].message,
             style: TextStyle(color: Colors.grey, fontSize: 15),),
              trailing:Text( Chatdata[i].time,
             style: TextStyle(fontSize: 14 , color: Colors.blueGrey),),
             onTap: (){
               Navigator.push(context,
              MaterialPageRoute(builder: (context) => chatdetails()
             ) ) ;
             }
            
           )
          ],
        );
        }
        ),
    );
    
  }
}