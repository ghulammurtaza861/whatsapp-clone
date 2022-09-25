

import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';
import 'package:flutter/scheduler.dart';


   class messagePage extends StatefulWidget {
  const messagePage({Key? key}) : super(key: key);

  @override
  State<messagePage> createState() => _messagePageState();
}

class _messagePageState extends State<messagePage> {
  static const Stylereciever = BubbleStyle(
 margin: const BubbleEdges.only(top: 10),
  alignment: Alignment.topRight,
  nip: BubbleNip.rightTop,
  color: const Color.fromRGBO(225, 255, 199, 1),
  showNip: false,
  );
   static const Stylesender = BubbleStyle(
 margin: const BubbleEdges.only(top: 10),
  alignment: Alignment.topLeft,
  nip: BubbleNip.leftTop,
  showNip: false,
  );

  ScrollController _myController  = ScrollController();
    @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback((_){
      _myController.jumpTo(_myController.position.maxScrollExtent);
    });
    return ListView(
      controller: _myController,
      children: [
        Bubble(
  alignment: Alignment.center,
  color: Color.fromRGBO(212, 234, 244, 1.0),
  child: Text('TODAY', textAlign: TextAlign.center, style: TextStyle(fontSize: 11.0)),
),
Bubble(
        style: Stylereciever,
  child: const Text('Hello, World!', textAlign: TextAlign.right),
),
Bubble(
            style: Stylereciever,
  child: const Text('How are you?', textAlign: TextAlign.right),
),
Bubble(
   style: Stylesender,
  child: const Text('Hi, developer!'),
),
Bubble(
  style: Stylesender,
  child: const Text('Well, see for yourself'),
),
Bubble(
        style: Stylereciever,
  child: const Text('Hello, World!', textAlign: TextAlign.right),
),
Bubble(
            style: Stylereciever,
  child: const Text('How are you?', textAlign: TextAlign.right),
),
Bubble(
   style: Stylesender,
  child: const Text('Hi, developer!'),
),
Bubble(
  style: Stylesender,
  child: const Text('Well, see for yourself'),
),
Bubble(
        style: Stylereciever,
  child: const Text('Hello, World!', textAlign: TextAlign.right),
),
Bubble(
            style: Stylereciever,
  child: const Text('How are you?', textAlign: TextAlign.right),
),
Bubble(
   style: Stylesender,
  child: const Text('Hi, developer!'),
),
Bubble(
  style: Stylesender,
  child: const Text('Well, see for yourself'),
),
Bubble(
        style: Stylereciever,
  child: const Text('Hello, World!', textAlign: TextAlign.right),
),
Bubble(
            style: Stylereciever,
  child: const Text('How are you?', textAlign: TextAlign.right),
),
Bubble(
   style: Stylesender,
  child: const Text('Hi, developer!'),
),
Bubble(
  style: Stylesender,
  child: const Text('Well, see for yourself'),
),
Bubble(
        style: Stylereciever,
  child: const Text('Hello, World!', textAlign: TextAlign.right),
),
Bubble(
            style: Stylereciever,
  child: const Text('How are you?', textAlign: TextAlign.right),
),
Bubble(
   style: Stylesender,
  child: const Text('Hi, developer!'),
),
Bubble(
  style: Stylesender,
  child: const Text('Well, see for yourself'),
),
      ],
    );
    
  }
}