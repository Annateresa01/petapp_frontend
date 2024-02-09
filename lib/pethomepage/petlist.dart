import 'package:flutter/material.dart';
import 'package:petapp/pethomepage/petview.dart';

class Petlist extends StatelessWidget {
  const Petlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 30,),
            ElevatedButton(onPressed: ()
                {

                }, child: Text("ADD")),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: ()
            {
Navigator.push(context, MaterialPageRoute(builder: (context)=>Petview()));
            }, child: Text("VIEW")),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: ()
            {

            }, child: Text("SEARCH")),
          ],
        ),
      ),
    );
  }
}
