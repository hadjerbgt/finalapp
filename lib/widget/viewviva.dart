import 'dart:convert';
import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;

class VivaCard extends StatelessWidget {
  final void Function() onTap;
  final String name;
  final String year;
  final String firststudent;
  final String secondstudent;
  final String thirdstudent;
  final String finalmark;
  const VivaCard({super.key, required this.onTap, required this.name, required this.year, required this.firststudent, required this.secondstudent, required this.thirdstudent, required this.finalmark});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap:onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Image.asset("assets\img\graduate.png",width: 50,height: 50,fit: BoxFit.fill,
            )),
            Expanded(
              flex: 2,
              child: ListTile(
                title: Text("$name"),
                subtitle: Text("It was presnted by these students: $firststudent, $secondstudent and $thirdstudent.\n On $year.\nThey got $finalmark."),
            ),),
          ],
        ),
      
    );
  }
}



