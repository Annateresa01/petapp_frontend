import 'package:flutter/material.dart';

class Petsearch extends StatefulWidget {
  const Petsearch({super.key});

  @override
  State<Petsearch> createState() => _PetsearchState();
}

class _PetsearchState extends State<Petsearch> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(),
      ),
    );
  }
}
