// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';



class Details extends StatefulWidget {
   Details({Key? key, required this.projectname, required this.year, required this.stFullName, required this.ndFullName, required this.rdFullName,required this.supervisorname,required this.presidentname,required this.examinatorname, required this.finalmark}) : super(key: key);
  String supervisorname;
  String examinatorname;
  String presidentname;
  String projectname;
  String year;
  String stFullName;
  String ndFullName;
  String rdFullName; 
  String finalmark;

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    if(widget.ndFullName=="no second one" || widget.rdFullName=="no second one"){
      return Scaffold(
        appBar: AppBar(
          title: Text("Created Vivas Details"),
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          }, 
          icon: Icon(Icons.arrow_back)),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.library_books_rounded),
                title: Text("The Project « ${widget.projectname}»      ${widget.year}"),
                subtitle: Text("It was presnted by:\n-${widget.stFullName.toUpperCase()}.\nFinal Mark: ${widget.finalmark}."),
              )
            ],
          ),
        )
      );
    }
    else{
      if(widget.ndFullName=="no second one" || widget.rdFullName=="no second one"){
        if(widget.ndFullName=="no second one"){
          return Scaffold(
            appBar: AppBar(
              title: Text("Created Vivas Details"),
              leading: IconButton(onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
            ),
           body: Container(
             padding: EdgeInsets.all(20.0),
              child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.library_books_rounded),
                  title: Text("The Project « ${widget.projectname}»      ${widget.year}"),
                  subtitle: Text("It was presnted by:\n-${widget.stFullName}\n-${widget.rdFullName}.\nFinal Mark: ${widget.finalmark}."),
                )
              ],
            ),
          )
        );
      }
      else{
        return Scaffold(
          appBar: AppBar(
            title: Text("Created Vivas Details"),
            leading: IconButton(onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
          ),
          body: Container(
            padding: EdgeInsets.all(20.0),
              child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.library_books_rounded),
                  title: Text("The Project « ${widget.projectname}»      ${widget.year}"),
                  subtitle: Text("It was presnted by:\n-${widget.stFullName}\n-${widget.ndFullName}.\nFinal Mark: ${widget.finalmark}."),
                )
              ],
            ),
          )
        );
      }
    }else{
      return Scaffold(
        appBar: AppBar(
          title: Text("Created Vivas Details"),
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          }, 
         icon: Icon(Icons.arrow_back)),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.library_books_rounded),
                  title: Text("The Project « ${widget.projectname}»      ${widget.year}"),
                  subtitle: Text("It was presnted by:\n-${widget.stFullName}\n-${widget.ndFullName}\n-${widget.ndFullName}.\nFinal Mark: ${widget.finalmark}."),
                )
              ],
            ),
          )
        );
      }
    }
  }
}
 /*leading: Icon(Icons.library_books_rounded),
              title: Text("The Project « $projectname »"),
              subtitle: Text("It was presnted by these students: ${stFullName.toUpperCase()}, ${ndFullName.toUpperCase()} and ${rdFullName.toUpperCase()}.\nOn $year.\nThey got $finalmark."),*/
            