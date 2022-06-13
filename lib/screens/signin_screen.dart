import 'package:desafio_agenda/screens/anon_screen.dart';
import 'package:desafio_agenda/screens/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../reusable_widgets/reusable_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();


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
            reusableTextField("Senha", Icons.lock, true, _passwordTextController),
            const SizedBox(
              height: 20,
            ),
            logInSignUpButton(context, true, (){

            FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailTextController.text, password: _passwordTextController.text).then((value) {
                    Navigator.push(context,
                         MaterialPageRoute(builder: (context) => const HomeScreen()));
            })/*.onError((error, stackTrace) {
              log("${error}");
            })*/;
             
            }),
            anonOption()
          ]),
          )) ,),);
  
    
  }

  Row anonOption(){
    return Row (
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const AnonScreen()));
          },
          child: const Text(
            "Continuar como anônimo",
            style: TextStyle(color: Color.fromRGBO(112, 82, 204, 1), fontWeight: FontWeight.bold ),
          ),
        )
      ],
    );
  }

  
}