import 'package:desafio_agenda/page/second_page.dart';
import 'package:flutter/material.dart';

class AnonScreen extends StatefulWidget {
  const AnonScreen({Key? key}) : super(key: key);

  @override
  State<AnonScreen> createState() => _AnonScreenState();
}

class _AnonScreenState extends State<AnonScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: 1,
    child: Scaffold(
      appBar: AppBar(
      title:  const Text('Eventos'),
      centerTitle: true,
      bottom: const TabBar (
        tabs: [
          Tab(text: 'Meus Eventos'),
        ],
        ),
    ),
    body: const TabBarView(
      children: [
        SecondPage(),
      ]),
    ),
    
  ); 
    
    
  
}

