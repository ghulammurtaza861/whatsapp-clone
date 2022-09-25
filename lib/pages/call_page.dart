import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/models/call_model.dart';


 class callPage extends StatefulWidget {
  const callPage({Key? key}) : super(key: key);

  @override
  State<callPage> createState() => _callPageState();
}

class _callPageState extends State<callPage> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: ListView.builder(
        itemCount: Calldata.length,
        itemBuilder: (context, i) {
          var s = 'images/no_img.png';
          return Column(
          children: [
            Divider(height: 10,),
           ListTile(
            leading:
             CircleAvatar(backgroundColor: Colors.blue,
             backgroundImage: AssetImage(Calldata[i].avatar),),

             title:Text( Calldata[i].name,
             style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Row(
                children: [
                 Container(
                  child: Calldata[i].callType,
                 ),
                   Text( Calldata[i].time,
             style: TextStyle(color: Colors.grey, fontSize: 15),),
                ],
              ),
            
              trailing: Icon(Icons.call, size: 25, color: Colors.green,),
             onTap: (){
               print('call clicked');
             }
            
           )
          ],
        );
        }
        ),
    );
  }
}