import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ViewMyVivas extends StatefulWidget {
  const ViewMyVivas({super.key});

  

  @override
  State<ViewMyVivas> createState() => _ViewMyVivasState();
}

class _ViewMyVivasState extends State<ViewMyVivas> {
  
   Future <List> getViva() async{
    String uri="http://192.168.187.158/crud/viewoldviva.php";
    
      var respons = await http.get(Uri.parse(uri));
      
      return jsonDecode(respons.body);    
    
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Created Vivas"),
        centerTitle: true,  
      ),
      body: FutureBuilder(
        future: getViva(),
        builder:(context, snapshot) {
          if(snapshot.hasError){
            print(snapshot.error);
          }
        return snapshot.hasData 
           ? ItemList(list: snapshot.data!,)
           : Center (child: CircularProgressIndicator(),);
        },
      )  
    );
  }
}

class ItemList extends StatelessWidget {
  
  final List list;
  ItemList ({required this.list});


  @override
  Widget build(BuildContext context){
    return ListView.builder(
      itemCount: list==null?0:list.length,
      itemBuilder: (context, i) {
        return Container(
          padding: const EdgeInsets.all(10.0),
          child: Card(
            child: ListTile(
              leading: Icon(Icons.library_books_rounded),
              title: Text("${list[i]["name"]}   ${list[i]["year"]}"),
              subtitle: Text("It was presnted by these students:\n ${list[i]["firststudent"]}, ${list[i]["secondstudent"]} and ${list[i]["thirdstudent"]}.\nThey got ${list[i]["finalmark"]}."),
            ),
          ),
        );    
      },
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