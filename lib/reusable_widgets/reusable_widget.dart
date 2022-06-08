import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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