import 'package:flutter/material.dart';
import 'Page/wisata.dart';

void main() {
  runApp(const MaterialApp(home: HomePage()));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.pink[400],
        leading: const Icon(Icons.home),
        title: const Center(child: Text("Tugas Flutter 6")),
        actions: const [Icon(Icons.search)],
      ),
      body: Column(children: const [Expanded(child: PilihanWisata())]),
    );
  }
}
