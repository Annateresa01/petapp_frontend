import 'package:flutter/material.dart';
import 'package:petapp/services/petapiservices.dart';

class Petadd extends StatefulWidget {
  const Petadd({super.key});

  @override
  State<Petadd> createState() => _PetaddState();
}

class _PetaddState extends State<Petadd> {
  TextEditingController n1=new TextEditingController();
  TextEditingController n2=new TextEditingController();
  TextEditingController n3=new TextEditingController();
  TextEditingController n4=new TextEditingController();

  void sentimg() async{
    final response=await petser().sentdata(n1.text, n2.text, n3.text, n4.text);
  }
  @override


  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Column(
            children: [
              SizedBox(height: 30,),
              TextField(
                controller: n1,
                decoration: InputDecoration(
                labelText: "enter petType",
                border: OutlineInputBorder()
              ),),
              SizedBox(height: 30,),
              TextField(
                controller: n2,
                decoration: InputDecoration(
                    labelText: "enter petBreed",
                    border: OutlineInputBorder()
                ),),
              SizedBox(height: 30,),
              TextField(
                controller: n3,
                decoration: InputDecoration(
                    labelText: "enter petNO",
                    border: OutlineInputBorder()
                ),),
              SizedBox(height: 30,),
              TextField(
                controller: n4,
                decoration: InputDecoration(
                    labelText: "enter petImage",
                    border: OutlineInputBorder()
                ),),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: sentimg, child: Text("SUBMIT"))
            ],
          ),
        ),
      ),
    );
  }
}
