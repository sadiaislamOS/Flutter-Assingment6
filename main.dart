import 'package:flutter/material.dart';
import 'a1_task1.dart';
import 'a1_task2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedTask = 'Task 1';

  @override
  Widget build(BuildContext context) {
    Widget currentScreen = selectedTask == 'Task 1' ? const Task1() : const Task2();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mst.Sadia Islam'),
        backgroundColor: Colors.teal,
        actions: [
          DropdownButton<String>(
            value: selectedTask,
            dropdownColor: Colors.white,
            underline: const SizedBox(),
            icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
            items: const [
              DropdownMenuItem(value: 'Task 1', child: Text('Task 1')),
              DropdownMenuItem(value: 'Task 2', child: Text('Task 2')),
            ],
            onChanged: (value) {
              setState(() {
                selectedTask = value!;
              });
            },
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: currentScreen,
    );
  }
}
