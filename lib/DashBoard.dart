import 'package:flutter/material.dart';
import 'package:finalapp/app2/form.dart';
import 'package:finalapp/app1/Calculate.dart';
import 'package:finalapp/vivaview.dart';

class DashBoardV extends StatelessWidget {
  const DashBoardV({super.key});

@override
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,  
      ),
      body: SafeArea(child: Center(
        child: FittedBox(
          child: Column(
            children: [
             
              Image.asset("assets/img/welcomeback.png",
                  width: 230,
                  height: 202,
                  fit: BoxFit.scaleDown,
                ),
              const SizedBox(height: 40.0,),
              const Text("Welcome To The Viva App",style: TextStyle(fontSize: 20,color: Color(0xff020202), fontWeight: FontWeight.w600),),
              const SizedBox(height: 8.0,),
              SizedBox(
                  width: 200,
                  child: 
                    Text("Click on What you want to do Take Control",style: TextStyle(fontSize:14,color: Color(0xff8D92A3), fontWeight: FontWeight.w400), textAlign: TextAlign.center,
                  )
              ),
              const SizedBox(height: 20.0,),
              FittedBox(
                fit: BoxFit.fitWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(onPressed:() {
                       Navigator.push(context, MaterialPageRoute(builder: (context){return Calculate();}),);
                      },
                      style: 
                        OutlinedButton.styleFrom(minimumSize: const Size(200,50)),
                      child: 
                        Text(
                          "Calculate Note".toUpperCase(),
                         style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(width: 8.0),
                    OutlinedButton(onPressed:() {
                       Navigator.push(context, MaterialPageRoute(builder: (context){return Myform();}),);
                      },
                      style: 
                        OutlinedButton.styleFrom(minimumSize: const Size(200,50)),
                      child: 
                        Text(
                          "Submit Viva".toUpperCase(),
                         style: const TextStyle(fontWeight: FontWeight.bold),
                         
                      ),
                    ),
                    SizedBox(width: 8.0),
                    OutlinedButton(onPressed:() {
                       Navigator.push(context, MaterialPageRoute(builder: (context){return ViewMyVivas();}),);
                      },
                      style: 
                        OutlinedButton.styleFrom(minimumSize: const Size(200,50),
                        backgroundColor: Colors.grey.shade500),
                      child: 
                        Text(
                          "My Viva".toUpperCase(),
                         style: const TextStyle(fontWeight: FontWeight.bold,
                         color: Colors.white),
                      ),
                    ),
                  ],
                ),
              )
              
              
            ],
          ),
        ),
      ))
    );
  }
}