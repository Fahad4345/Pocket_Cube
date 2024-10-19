import 'package:flutter/material.dart';
import 'package:myapp/Screens/solve.dart';

class Bottomsheet extends StatefulWidget {
  final String text1;

  final String text2;

  final String text3;
  const Bottomsheet(
      {super.key,
      required this.text1,
      required this.text2,
      required this.text3});

  @override
  State<Bottomsheet> createState() => _BottomsheetState();
}

class _BottomsheetState extends State<Bottomsheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
        width: 500,
        color: const Color.fromARGB(255, 4, 9, 14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Pocket Cube",
                      style: TextStyle(
                          color: Colors.orangeAccent,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(Icons.close,
                          color: Colors.orangeAccent, size: 30))
                ],
              ),
            ),
            Container(
              width: 360,
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
                   onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Solve()));
                },
                leading: const Icon(Icons.lightbulb_circle_rounded),
                trailing: const Icon(Icons.arrow_right_alt),
                title: Text(widget.text1),
              ),
            ),
            Container(
              width: 360,
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
             
                leading: const Icon(Icons.lightbulb_circle_rounded),
                trailing: const Icon(Icons.arrow_right_alt),
                title: Text(widget.text2),
              ),
            ),
            Container(
              width: 360,
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
                leading: const Icon(Icons.lightbulb_circle_rounded),
                trailing: const Icon(Icons.arrow_right_alt),
                title: Text(widget.text3),
              ),
            ),
          ],
        ));
  }
}
