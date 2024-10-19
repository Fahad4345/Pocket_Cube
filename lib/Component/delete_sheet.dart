import 'package:flutter/material.dart';

class DeleteSheet extends StatefulWidget {
  const DeleteSheet({super.key});

  @override
  State<DeleteSheet> createState() => _DeleteSheetState();
}

class _DeleteSheetState extends State<DeleteSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
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
                  const Text("Delete ALL ?",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 64, 64),
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(Icons.close,
                          color: Colors.orangeAccent, size: 30))
                ],
              ),
            ),const Divider(
              color: Colors.orangeAccent,
              thickness: 2,
            ) ,Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(10)),
                width: 100,
                child: Center(
                  child: TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Row(
                      children: [
                        Icon(Icons.lightbulb_circle_rounded),
                        Text("Cancel", style: TextStyle(color: Colors.black)),
                      ],
                    ),
                  ),
                ),
                          ), Container(
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
                    Text("Confirm", style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
            ),
          )
              ],
            )
          ],
        ));
  }
}