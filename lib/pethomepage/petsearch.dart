import 'package:flutter/material.dart';
import 'package:petapp/services/petapiservices.dart';

class Petsearch extends StatefulWidget {
  const Petsearch({super.key});

  @override
  State<Petsearch> createState() => _PetsearchState();
}

class _PetsearchState extends State<Petsearch> {
  TextEditingController searchterm=new TextEditingController();
  void searchitem() async
  {
final response = await petser().getsearch(searchterm.text);
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
                controller: searchterm,
                decoration: InputDecoration(
                labelText: "search",
                suffixIcon: IconButton(onPressed: ()
                    {

                    }, icon: Icon(Icons.search)),
                border: OutlineInputBorder(),
              ),),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: searchitem, child: Text("search"))

            ],
          ),
        ),
      ),
    );
  }
}
