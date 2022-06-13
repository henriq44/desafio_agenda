import 'package:desafio_agenda/reusable_widgets/reusable_widget.dart';
import 'package:desafio_agenda/screens/create_Event.dart';
import 'package:flutter/material.dart';
class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

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