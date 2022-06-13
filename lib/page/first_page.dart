import 'package:flutter/material.dart';
import '../reusable_widgets/reusable_widget.dart';
import '../screens/create_Event.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Container(
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.fromLTRB(10, 420, 10, 20),
      child: Column (
        children: <Widget> [
          createEvent(context, (){
            Navigator.push(context,
                         MaterialPageRoute(builder: (context) => const CreateEvent()));
          })
        ],)
        
    ),
  );
 
}