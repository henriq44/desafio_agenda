import 'package:desafio_agenda/page/first_page.dart';
import 'package:desafio_agenda/page/second_page.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: 2,
    child: Scaffold(
      appBar: AppBar(
      title:  const Text('Eventos'),
      centerTitle: true,
      bottom: const TabBar (
        tabs: [
          Tab(text: 'Eventos Soft'),
          Tab(text: 'Meus Eventos',)
        ],
        ),
    ),
    body: const TabBarView(
      children: [
        FirstPage(),
        SecondPage(),
      ]),
    ),
    
  ); 
}