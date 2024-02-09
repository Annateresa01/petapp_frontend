import 'package:flutter/material.dart';
import 'package:petapp/services/petapiservices.dart';
import 'package:petapp/model/petmodel.dart';

class Petview extends StatefulWidget {
  const Petview({super.key});

  @override
  State<Petview> createState() => _PetviewState();
}

class _PetviewState extends State<Petview> {
  Future<List<Petm> >? data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data=petser().getpet();
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: FutureBuilder(future: data, builder: (context,sshot){
          if(sshot.hasData && sshot.data!.isNotEmpty)
            {
              return ListView.builder(
                  itemCount: sshot.data!.length,
                  itemBuilder: (value,index){
                return Card(
                  child:
                  Column(
                    children: [
                      Text(sshot.data![index].petType.toString()),
                      Text(sshot.data![index].petBreed.toString()),
                      Text(sshot.data![index].petNo.toString()),
                      Image.network(sshot.data![index].v.toString())
                    ],
                  ),

                );
              });

            }
          else
            {
              return Text("Loading...");
            }
        }),
      ),
    );
  }
}
