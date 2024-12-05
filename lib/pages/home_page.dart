import 'package:flutter/material.dart';
import 'package:social/components/my_drawer.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final TextEditingController newPostController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("O M E G A"),
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      elevation: 0,
      
      ),
      drawer: const MyDrawer(),
    );
  }
}