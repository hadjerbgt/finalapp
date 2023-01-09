import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:finalapp/widget/Myinputtextfieal.dart' show MyTextField;
import 'package:finalapp/app2/details.dart';
import 'package:finalapp/widget/viewviva.dart';
import 'package:finalapp/vivaview.dart';
import 'package:http/http.dart' as http;
class Myform extends StatefulWidget {
  const Myform({super.key});

  @override
  State<Myform> createState() => _MyformState();
}

class _MyformState extends State<Myform> {
  final nameController=TextEditingController();
  final yearController=TextEditingController();
  final stfullnameController=TextEditingController();
  final ndfullnameController=TextEditingController();
  final rdfullnameController=TextEditingController();
  final _formkey = GlobalKey<FormState>();
  @override

  void initState() {
    // TODO: implement initState
    super.initState();
     ndfullnameController.text="no second one";
     rdfullnameController.text="no second one";
     
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*/appBar: AppBar(
        title: const Text("Viva Creator"),
        centerTitle: true,  
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 78, 88, 87),
            Color.fromARGB(255, 40, 40, 40)
          ])),
        )
      ),*/
      body: Container(
        decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 78, 88, 87),
            Color.fromARGB(255, 40, 40, 40)
          ])),
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: ListView(
            children: [
             /*Image.asset("assets/img/first.png",
                  width: 50,
                  height: 100,
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.centerLeft,
                ),*/
              const Text("About The Project",style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),),
              const Text("Please fill the form carefully"),
              const SizedBox(height: 20.0,),
              
              Form(
                key: _formkey,
                child: Column(
                  children: [
                    MyTextField(
                      havecontroller: nameController,
                      text:'Project Name', erromessage: 'Please enter a Name',
                    ),
                    const SizedBox(height: 10.0),
                    MyTextField(
                      havecontroller: yearController,
                      text:'Project Year',
                      leadingIcone: Icons.numbers_outlined, erromessage: 'Please enter a Year',
                   ),
                    const SizedBox(height: 10.0),
                    MyTextField(
                      havecontroller: stfullnameController, 
                      text: 'The First Student Full name',
                      leadingIcone: Icons.person_outlined, erromessage: 'Please enter the Student Full name',
                    ),
                    const SizedBox(height: 10.0),
                    MyTextField(havecontroller: ndfullnameController, 
                      text: 'The Second Student Full name',
                      leadingIcone: Icons.person_outlined, erromessage: 'Please enter the Student Full name',
                    ),
                    const SizedBox(height: 10.0),
                    MyTextField(havecontroller: rdfullnameController, 
                      text: 'The Third Student Full name', erromessage: 'Please enter the Student Full name',
                      leadingIcone: Icons.person_outlined,
                    ),
                    const SizedBox(height: 10.0),
                    const SizedBox(height: 20.0,),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(minimumSize: const Size(200,50), backgroundColor: Colors.blueAccent),
                      onPressed:() {                    
                        if(_formkey.currentState!.validate()){
                          Navigator.push(
                            context, 
                            MaterialPageRoute(builder: (context){
                              return Myform2(projectname: nameController.text, year: yearController.text, firststudent: stfullnameController.text, secondstudent: ndfullnameController.text, thirdstudent: rdfullnameController.text,);
                            }
                          ),
                         );
                        }
                      },
                      child: Text("Submit viva",
                      style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );;
  }
}


class Myform2 extends StatefulWidget {
  String projectname;
  String year;
  String firststudent;
  String secondstudent;
  String thirdstudent;
 
  Myform2({
    super.key,
    required this.projectname,
    required this.year,
    required this.firststudent,
    required this.secondstudent,
    required this.thirdstudent}
  );

  @override
  State<Myform2> createState() => _Myform2State();
}

class _Myform2State extends State<Myform2>  {
  final supnameController=TextEditingController();
  final supnoteController=TextEditingController();
  final viprenameController=TextEditingController();
  final viprenoteController=TextEditingController();
  final exmnameController=TextEditingController();
  final exmnoteController=TextEditingController();
  var finalmarkController=TextEditingController();
  var result;

  final _formkey2 = GlobalKey<FormState>();

  Future <void> submitviva() async{
    if( 
        viprenoteController.text!=""||
        exmnoteController.text!=""||
        finalmarkController.text!="") {
     try{
      String uri="http://192.168.187.158/crud/submitviva.php";
      var res= await http.post(Uri.parse(uri),body: {
        "name":widget.projectname,
        "year":widget.year,
        "firstsudent": widget.firststudent,
        "secondstudent":widget.secondstudent,
        "thirdsecond": widget.thirdstudent,
        "supervisorname":supnameController.text,
        "supnote":supnoteController.text,
        "presidentname":viprenameController.text,
        "viprenote": viprenoteController.text,
        "examinatorname":exmnameController.text,
        "exmnote": exmnoteController.text,
        "finalmark": finalmarkController.text,
      });

      var responsable= jsonDecode(res.body);
      if (responsable["success"]=="true") {
        print("Data Sent");
        Navigator.push(context,MaterialPageRoute(builder: (context){return Details(projectname: widget.projectname,year: widget.year,stFullName: widget.firststudent,ndFullName: widget.secondstudent,rdFullName: widget.thirdstudent,supervisorname: supnameController.text,presidentname: viprenameController.text,examinatorname: exmnameController.text,finalmark: finalmarkController.text,);}),);  
      }
      else{
        print("Data wasn't Sent");
      }
     }catch(e){
       print(e);
      }
    
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Viva Creator"),
        centerTitle: true,  
      ),
      body: Container(
        decoration: BoxDecoration( gradient: LinearGradient(colors: [Color.fromARGB(255, 78, 88, 87),Color.fromARGB(255, 40, 40, 40)])),
        padding: const EdgeInsets.all(30.0),
        child: ListView(
          children: [
            /*const Image( 
              image: AssetImage("assets/img/certificate.png"),
              width: 50.0,
              height: 100.0,
              fit: BoxFit.scaleDown,
            ),*/
            const Text("The Jury",style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),),
            const Text("Please fill the form carefully"),
            const SizedBox(height: 20.0,),
            Form(
              key: _formkey2,
              child: Column(
                children: [
                  MyTextField(
                    havecontroller: supnameController, 
                    text: 'The Supervisor FullName',
                    leadingIcone: Icons.note_alt_outlined, erromessage: 'Please enter the FullName ',
              
                  ),
                  const SizedBox(height: 10.0),
                  MyTextField(
                    havecontroller: supnoteController, 
                    text: 'The Supervisor note',
                    leadingIcone: Icons.note_alt_outlined, erromessage: 'Please enter the Supervisor note ',
              
                  ),
                  const SizedBox(height: 10.0),
                  MyTextField(
                    havecontroller: viprenameController, 
                    text: 'The Viva President FullName',
                    leadingIcone: Icons.note_alt_outlined, erromessage: 'Please enter FullName ',
              
                  ),
                  const SizedBox(height: 10.0),
                  MyTextField(
                    havecontroller: viprenoteController, 
                    text: 'The Viva President note',
                    leadingIcone: Icons.note_alt_outlined, erromessage: 'Please enter the Viva President note',
              
                  ),
                  const SizedBox(height: 10.0),
                  MyTextField(
                    havecontroller: exmnameController, 
                    text: 'The Examinator FullName',
                    leadingIcone: Icons.note_alt_outlined, erromessage: 'Please enter FullName ',
              
                  ),
                  const SizedBox(height: 10.0),
                  MyTextField(
                    havecontroller: exmnoteController, 
                    text: 'The Examinator note',
                    leadingIcone: Icons.note_alt_outlined, erromessage: 'Please enter the Examinator note ',
              
                  ),

                  const SizedBox(height: 20.0,),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(minimumSize: const Size(200,50), backgroundColor: Colors.blueAccent),
                    onPressed:() {                    
                      if(_formkey2.currentState!.validate()){
                        result= double.parse(supnoteController.text)*0.3+double.parse(viprenoteController.text)*0.3+double.parse(exmnoteController.text)*0.3;
                        finalmarkController.text= result.toStringAsFixed(0);
                        submitviva();
                      }
                    },
                    child: Text("Submit viva",
                    style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 15.0,),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}