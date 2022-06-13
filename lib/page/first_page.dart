import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Container(
      color: Colors.white,
      child: const Center(child: Text(
        'conteudo aba 1',
        style: TextStyle(
          fontSize: 12,
          color: Colors.black,
        ),
      )),
    ),
  );
    
  
}