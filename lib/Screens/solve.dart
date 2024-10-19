import 'package:flutter/material.dart';
import 'package:myapp/Component/delete_sheet.dart';

class Solve extends StatefulWidget {
  const Solve({super.key});

  @override
  State<Solve> createState() => _SolveState();
}

class _SolveState extends State<Solve> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("Pocket Cube"),
          actions:  const [
            
            Icon(Icons.colorize),
            Icon(Icons.info),
            Icon(Icons.help),],
        ),
        body: Column(children: [
          Container(
            color: Colors.orangeAccent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text("Solve",
                        style: TextStyle(color: Colors.black))),
                GestureDetector(
                  onTap: () => showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return const DeleteSheet();
          }),
                  child: const Row(
                    children: [
                     Text("Reset",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      Icon(
                        Icons.close_rounded,
                        size: 40,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 450),
          Container(
            decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(10)),
            width: 100,
            child: Center(
              child: TextButton(
                onPressed: () {},
                child: const Row(
                  children: [
                    Icon(Icons.lightbulb_circle_rounded),
                    Text("Solve", style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
            ),
          )
        ]));
  }
}
