import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: 'ok',
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: 'ok',
            icon: Icon(Icons.favorite),
          ),
        ],
      ),
    );
  }
}
