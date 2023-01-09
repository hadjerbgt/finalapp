import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  
  final TextEditingController havecontroller;
  String text;
  IconData leadingIcone;
  String erromessage;

  MyTextField({
    required this.havecontroller,
    required this.text,
    this.leadingIcone=Icons.abc_outlined,
    required this.erromessage,});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator:(value) {
        if(value == null || value.isEmpty){
          return erromessage;
        }else
          null;
      },
      controller: havecontroller,
      decoration: InputDecoration(
        labelText: text,
        prefixIcon: Icon(leadingIcone),
        border: const OutlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(vertical: 10),
        focusedBorder: const OutlineInputBorder(
          /*hdi collor t3 field border onclick*/
          borderSide: BorderSide(color: Colors.blueAccent),
        ),
          /* Color t3 text f nos field*/
        labelStyle: const TextStyle(color: Colors.white,fontSize: 12)
      ),
    );
  }
}