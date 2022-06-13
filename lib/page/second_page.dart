import 'package:flutter/material.dart';
class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Container(
      color: Colors.white,
      child: const Center(child: Text(
        'conteudo aba 2',
        style: TextStyle(
          fontSize: 12,
          color: Colors.black,
        ),
      )),
    ),
  );
    
  
}