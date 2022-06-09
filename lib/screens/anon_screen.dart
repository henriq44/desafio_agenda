import 'package:flutter/material.dart';

class anonScreen extends StatefulWidget {
  const anonScreen({Key? key}) : super(key: key);

  @override
  State<anonScreen> createState() => _anonScreenState();
}

class _anonScreenState extends State<anonScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: 1,
    child: Scaffold(
      appBar: AppBar(
      title:  const Text('TabBar'),
      centerTitle: true,
      bottom: const TabBar (
        tabs: [
          Tab(text: 'Meus Eventos'),
        ],
        ),
    ),
    body: const TabBarView(
      children: [
        Center(child: Text('tab 2 conteúdo')),
      ]),
    ),
    
  ); 
    
    
  
}

