import 'package:flutter/material.dart';
import 'package:myapp/Component/menu_slider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Cube Solver",style:TextStyle(color: Colors.orangeAccent ,fontSize: 30,fontWeight: FontWeight.bold)),
      
      ),
      body:  const SingleChildScrollView(
        child: Column(
        
          children: [
            MenuSlider()
         
        ],
        ),
      ),
    );
  }
}
