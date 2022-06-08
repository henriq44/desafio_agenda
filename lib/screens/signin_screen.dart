
import 'package:flutter/material.dart';

import '../reusable_widgets/reusable_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white, child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          30, MediaQuery.of(context).size.height * 0.1, 30, 0),
        child: Column(
          children: <Widget> [
            logoWidget("imagens/images/Frame_20.png"),
            const SizedBox(
              height: 30,
            ),
            reusableTextField("Email", Icons.person, false, _emailTextController),
            const SizedBox(
              height: 30,
            ),
            reusableTextField("Senha", Icons.lock, true, _passwordTextController)
          ]) ,
          )) ,),);
  
    
  }

  
}