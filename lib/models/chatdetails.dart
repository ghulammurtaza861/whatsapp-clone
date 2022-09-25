import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/pages/message_page.dart';

   class chatdetails extends StatefulWidget {
  const chatdetails({Key? key}) : super(key: key);

  @override
  State<chatdetails> createState() => _chatdetailsState();
}

class _chatdetailsState extends State<chatdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage('images/no_img.png'),
            ),
            Padding(
              padding: EdgeInsets.only(left: 6),
              child: Text( 'Ghulam Murtaza'),
            )
          ],
        ),
        actions: [
           IconButton(
            icon: Icon(Icons.call), onPressed: (){
            print('call button clicked');
          }, ),
           IconButton(
            icon: Icon(Icons.video_call), onPressed: (){
            print('video call button clicked');
          }, ),
          
           IconButton(
            icon: Icon(Icons.more_vert), onPressed: (){
            print('Three Dot button clicked');
          }, ),
        ],
      ),
      body: Column(
        children: [
          Expanded(child: messagePage()),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Flexible(child: TextField(
                  minLines: 1,
                  maxLines: 5,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.grey,
                    width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.grey , width: 2)
                     ),
                     hintText: 'Type a message',
                  ),
                ),
                
                )
              ],
            ),
          )
        ],
      ),
    );
    
  }
}