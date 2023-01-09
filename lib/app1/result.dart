import 'package:finalapp/app1/Calculate.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class result extends StatelessWidget {
  String val1, val2, val3, val4, val5, val6, val7, val8, val9, val10, val11,val12;

  result({
    required this.val1,
    required this.val2,
    required this.val3,
    required this.val4,
    required this.val5,
    required this.val6,
    required this.val7,
    required this.val8,
    required this.val9,
    required this.val10,
    required this.val11,
    required this.val12,
  });
  @override
  Widget build(BuildContext context) {
    int result = int.parse(val1) +
        int.parse(val2) +
        int.parse(val3) +
        int.parse(val4) +
        int.parse(val5) +
        int.parse(val6) +
        int.parse(val7) +
        int.parse(val8) +
        int.parse(val9) +
        int.parse(val10)+
        int.parse(val11)+
        int.parse(val12);
    return Scaffold(
      appBar: AppBar(
        title: Text('final teacher’s mark'),
      ),
      body: Container(
        child: Center(
            child: Center(
                child:
                    Text("YOUR FINAL MARK IS :\n                    $result"))),
      ),
    );
    ;
  }
}
