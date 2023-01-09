import 'package:finalapp/app1/result.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Calculate extends StatefulWidget {
  const Calculate({Key? key}) : super(key: key);

  @override
  State<Calculate> createState() => _CalculateState();
}

class _CalculateState extends State<Calculate> {
  TextEditingController note1Controller = TextEditingController();
  TextEditingController note2Controller = TextEditingController();
  TextEditingController note3Controller = TextEditingController();
  TextEditingController note4Controller = TextEditingController();
  TextEditingController note5Controller = TextEditingController();
  TextEditingController note6Controller = TextEditingController();
  TextEditingController note7Controller = TextEditingController();
  TextEditingController note8Controller = TextEditingController();
  TextEditingController note9Controller = TextEditingController();
  TextEditingController note10Controller = TextEditingController();
  TextEditingController note11Controller = TextEditingController();
  TextEditingController note12Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      /*appBar: AppBar(
        title: Text('Final Evaluation Note'),
      ),*/
      body: Container(
        decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 78, 88, 87),
            Color.fromARGB(255, 40, 40, 40)
          ])),
        child: Center(
          child: SingleChildScrollView(
            
             padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Text("Evaluation Grading Table",style: TextStyle(fontSize: 50,fontWeight: FontWeight.w600),textAlign: TextAlign.center,),
                SizedBox(height:30),
                Table(
                  
                    
                  border: TableBorder.all(width: 1, color: Colors.black),
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  columnWidths: const {
                    0: FlexColumnWidth(4),
                    1: FlexColumnWidth(1),
                    2: FlexColumnWidth(2),
                  },
                  children: [
                      TableRow(children: [
                        TableCell(child: Container()),
                        TableCell(child: Text("Barème\n(max)",textAlign: TextAlign.center,)),
                        TableCell(child: Text("Note",textAlign: TextAlign.center,))
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("Organisation du mémoire",textAlign: TextAlign.center,)),
                        TableCell(child: Text("0.5",textAlign: TextAlign.center,)),
                        TableCell(
                            child: TextField(
                              
                          controller: note1Controller,
                          keyboardType: TextInputType.number,
                        ))
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("Qualité rédactionnelle",textAlign: TextAlign.center,)),
                        TableCell(child: Text("1",textAlign: TextAlign.center,)),
                        TableCell(
                            child: TextField(
                              
                          controller: note2Controller,
                          keyboardType: TextInputType.number,
                        ))
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("Qualité de la bibliographie",textAlign: TextAlign.center,)),
                        TableCell(child: Text("0.5",textAlign: TextAlign.center,)),
                        TableCell(
                            child: TextField(
                              
                          controller: note3Controller,
                          keyboardType: TextInputType.number,
                        ))
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("Contenu scientifique : clarté de la problématique, méthodologie de travail,conclusion,etc.",textAlign: TextAlign.center,)),
                        TableCell(child: Text("1",textAlign: TextAlign.center,)),
                        TableCell(
                            child: TextField(
                              
                          controller: note4Controller,
                          keyboardType: TextInputType.number,
                        ))
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("Ergonomie / clarté de l\’analyse",textAlign: TextAlign.center,)),
                        TableCell(child: Text("1",textAlign: TextAlign.center,)),
                        TableCell(
                            child: TextField(
                              
                          controller: note5Controller,
                          keyboardType: TextInputType.number,
                        ))
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("Effort développement / Analyse: originalité",textAlign: TextAlign.center,)),
                        TableCell(child: Text("1",textAlign: TextAlign.center,)),
                        TableCell(
                            child: TextField(
                              
                          controller: note6Controller,
                          keyboardType: TextInputType.number,
                        ))
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("Qualité des résultats",textAlign: TextAlign.center,)),
                        TableCell(child: Text("1",textAlign: TextAlign.center,)),
                        TableCell(
                            child: TextField(
                              
                          controller: note7Controller,
                          keyboardType: TextInputType.number,
                        ))
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("Maîtrise des outils",textAlign: TextAlign.center,)),
                        TableCell(child: Text("1",textAlign: TextAlign.center,)),
                        TableCell(
                            child: TextField(
                              
                          controller: note8Controller,
                          keyboardType: TextInputType.number,
                        ))
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("Qualité de la présentation",textAlign: TextAlign.center,)),
                        TableCell(child: Text("1",textAlign: TextAlign.center,)),
                        TableCell(
                            child: TextField(
                              
                          controller: note9Controller,
                          keyboardType: TextInputType.number,
                        ))
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("Expression orale aisée",textAlign: TextAlign.center,)),
                        TableCell(child: Text("1",textAlign: TextAlign.center,)),
                        TableCell(
                            child: TextField(
                              
                          controller: note10Controller,
                          keyboardType: TextInputType.number,
                        ))
                      ]),
                      TableRow(children: [
                        TableCell(child: Text("Problématique bien posée",textAlign: TextAlign.center,)),
                        TableCell(child: Text("1",textAlign: TextAlign.center,)),
                        TableCell(
                            child: TextField(
                              
                          controller: note11Controller,
                          keyboardType: TextInputType.number,
                        ))
                      ]),
                      TableRow(
                        children: [
                          TableCell(child: Text("Pertinence et qualité des réponses sur le plan scientifique",textAlign: TextAlign.center,)),
                          TableCell(child: Text("2",textAlign: TextAlign.center,)),
                          TableCell(
                            child: 
                              TextField(
                  
                                controller: note12Controller,
                                keyboardType:
                               TextInputType.number,
                              )
                          )
                        ]
                       ),
                    ]
                  ),
                const SizedBox(height: 20.0),
                
                    GestureDetector(
                onTap: () { if( note1Controller.text!=""||
                                 note2Controller.text!=""||
                                 note3Controller.text!=""||
                                 note4Controller.text!=""||
                                 note5Controller.text!=""||
                                 note6Controller.text!=""||
                                 note7Controller.text!=""||
                                 note8Controller.text!=""||
                                 note9Controller.text!=""||
                                 note10Controller.text!=""||
                                 note11Controller.text!=""||
                                 note12Controller.text!=""){Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => result(
                                    val1: note1Controller.text,
                                    val2: note2Controller.text,
                                    val3: note3Controller.text,
                                    val4: note4Controller.text,
                                    val5: note5Controller.text,
                                    val6: note6Controller.text,
                                    val7: note7Controller.text,
                                    val8: note8Controller.text,
                                    val9: note9Controller.text,
                                    val10: note10Controller.text,
                                    val11: note11Controller.text,
                                    val12: note12Controller.text,
                                  )));}
                                  else{
                                    Fluttertoast.showToast(
                                      msg: 'Please fill the Note Columns',
                                      backgroundColor: Colors.blueGrey,
                                      textColor: Colors.white,
                                      toastLength: Toast.LENGTH_SHORT,
                                      timeInSecForIosWeb: 1,
                                      webBgColor: "linear-gradient(to right, #6699CC, #6699CC)",
                                      webPosition: "right"
                                    );
                                  }
                                },
                child: Container(
                  width: 150,
                  height: 60,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.blueGrey,
                        Color.fromRGBO(76,174,227, 1),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(5, 5),
                        blurRadius: 10,
                      )
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'Final Mark',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
