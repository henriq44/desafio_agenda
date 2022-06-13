import 'package:flutter/material.dart';

Image logoWidget(String imageName){
    return Image.asset(
      imageName,
      fit: BoxFit.fitWidth,
      width: 100,
      height: 180,
    );
  }

TextField reusableTextField(String text, IconData icon, bool isPasswordType,
  TextEditingController controller){
    return TextField( controller:  controller,
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
    cursorColor:  Colors.black,
    style: TextStyle(color: Colors.black.withOpacity(0.9)),
    decoration: InputDecoration(prefixIcon: Icon(icon, color: Colors.black,),
    labelText: text,
    labelStyle: TextStyle(color: Colors.black.withOpacity(0.9)),
    filled: true,
    floatingLabelBehavior: FloatingLabelBehavior.never,
    fillColor: Colors.black.withOpacity(0.3),
    border: OutlineInputBorder(borderRadius:  BorderRadius.circular(30.0), 
    borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
    ),
    keyboardType: isPasswordType
    ? TextInputType.visiblePassword
    : TextInputType.emailAddress,
    );
  }

Container logInSignUpButton (
  BuildContext context, bool isLogin, Function onTap){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
      child: ElevatedButton (
        onPressed: () {
          onTap();
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)){
              return const Color.fromARGB(255, 182, 165, 231);
            }
            return const Color.fromRGBO(112, 82, 204, 1);
          }),
          shape:  MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
        child: Text(
          isLogin ? 'LOG IN' : 'Continuar como visitante',
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16
          ),
        ),
         ),
    );
  }