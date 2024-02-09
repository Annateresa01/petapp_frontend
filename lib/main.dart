import 'package:flutter/material.dart';
import 'package:petapp/pethomepage/petlist.dart';

void main()
{
  runApp(petapp());
}
class petapp extends StatelessWidget {
  const petapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Petlist(),
    );
  }
}
