import 'package:flutter/material.dart';

class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Name: Mst.Sadia Islam"),
            Text("City: Sylhet"),
            Text("Favorite Color: Blue"),
          ],
        ),
      ),
    );
  }
}
