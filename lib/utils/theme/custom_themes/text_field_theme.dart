import 'package:flutter/material.dart';

class TTextFormFieldTheme {
  TTextFormFieldTheme._();

  // light theme
  static InputDecorationTheme lightInputDecorationTheme =
       InputDecorationTheme(
          errorMaxLines: 3,
          prefixIconColor: Colors.grey,
          suffixIconColor: Colors.grey,
          labelStyle: const TextStyle(fontSize: 14, color: Colors.black),
          hintStyle: const TextStyle(fontSize: 14, color: Colors.black),
          errorStyle: const TextStyle(fontStyle: FontStyle.normal,),
          floatingLabelStyle: TextStyle(color: Colors.black.withOpacity(0.8)),
          border:  OutlineInputBorder( borderRadius: BorderRadius. circular (14),
borderSide: const BorderSide(width: 1, color: Colors.grey),
),


          );
}
