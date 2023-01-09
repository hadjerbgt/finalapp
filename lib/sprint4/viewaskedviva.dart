import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ViewTheViva extends StatefulWidget {
  const ViewTheViva({super.key,required this.id});
  final String id;
  

  @override
  State<ViewTheViva> createState() => _ViewTheVivaState();
}

class _ViewTheVivaState extends State<ViewTheViva> {
  


  
   Future <List> getViva() async{
    String uri="http://192.168.187.158/crud/viewoldviva.php";
    
      var respons = await http.get(Uri.parse(uri));
      
      return jsonDecode(respons.body);    
    
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Viva"),
        centerTitle: true,  
        backgroundColor: Colors.grey,
      ),
      body: FutureBuilder(
        future: getViva(),
        builder:(context, snapshot) {
          if(snapshot.hasError){
            print(snapshot.error);
          }
        return snapshot.hasData 
           ? ItemList(list: snapshot.data!,id: widget.id)
           : Center (child: CircularProgressIndicator(),);
        },
      )  
    );
  }
}

class ItemList extends StatelessWidget {
  final String id;
  final List list;
  ItemList ({required this.list, required this.id});
  


  @override
  Widget build(BuildContext context){
    return Container(
       decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 78, 88, 87),
            Color.fromARGB(255, 40, 40, 40)
          ])),
      child: ListView.builder(
        itemCount: list==null?0:list.length,
        itemBuilder: (context, i) {
          if(list[i]["id"]==id){return Container(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.library_books_rounded),
                title: Text("${list[i]["name"]}   ${list[i]["year"]}"),
                subtitle: Text("It was presnted by these students:\n ${list[i]["firststudent"]}, ${list[i]["secondstudent"]} and ${list[i]["thirdstudent"]}.\nThey got ${list[i]["finalmark"]}."),
              ),
            ),
          );}else return Container();    
        },
      ),
    );
  }
}


/*class viewviva extends StatefulWidget {
  const viewviva({super.key});

  @override
  State<viewviva> createState() => _viewvivaState();
}

class _viewvivaState extends State<viewviva> {
  
  List vivadata=[];
  
  
  Future <String> getrecord() async{
    String uri="http://192.168.43.110/crud/viewoldviva.php";
    
      var respons = await http.get(Uri.parse(uri));
      
      vivadata = jsonDecode(respons.body);
      
      return "Success!";
    
    
  }
  @override
  void iniState(){
    getrecord();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Created Vivas"),
        centerTitle: true,  
      ),
      body: InkWell(
        onTap:ontap,
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
      )
    );
  }
}*/