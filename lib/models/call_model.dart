import 'package:flutter/material.dart';


class CallModel{
  final String name;
  final String time;
  final String avatar;
  final Icon callType;
  CallModel({required this.name,required this.time,required this.avatar, required this.callType});

  static  Icon callrecieved = Icon(Icons.call_received,
  size: 18,
  color: Colors.green,
  );
   static  Icon callmissed = Icon(Icons.call_missed,
  size: 18,
  color: Colors.red,
  );
}
List<CallModel>  Calldata = [
  CallModel(
    name: 'Abdullah',
      time: "10:20",
      callType: CallModel.callrecieved,
       avatar: "images/m1.jpg",
       
       ),
       CallModel(
    name: 'Ali',
      callType: CallModel.callmissed,
      time: "5:10",
       avatar: "images/mp1.jpg",
       ),
        CallModel(
    name: 'Ahmed',
      time: "9:10",
       callType: CallModel.callrecieved,
      avatar: "",
       ),
        CallModel(
    name: 'Ali',
     callType: CallModel.callrecieved,
      time: "5:10",
       avatar: "images/mp1.jpg",
       ),
        CallModel(
    name: 'Ali',
     callType: CallModel.callrecieved,
      time: "5:10",
       avatar: "images/mp2.jpg",
       ),
        CallModel(
    name: 'Ali',
      time: "5:10",
       callType: CallModel.callmissed,
       avatar: "images/mp3.jpg",
       ),
        CallModel(
    name: 'Ali',
      time: "5:10",
       callType: CallModel.callrecieved,
       avatar: "images/mp4.jpg",
       ),
        CallModel(
    name: 'Ali',
      time: "5:10",
       callType: CallModel.callmissed,
       avatar: "images/m1.jpg",
       ),
        CallModel(
    name: 'Ali',
      time: "5:10",
       callType: CallModel.callrecieved,
       avatar: "images/mp1.jpg",
       ),
];

