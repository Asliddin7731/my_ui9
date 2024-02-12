
import 'package:flutter/material.dart';

class ItemOfPost extends StatelessWidget {
  const ItemOfPost({super.key, required this.raqam});

  final int raqam;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: raqam.isOdd ? Colors.white : Colors.black12,
      height: 100.0,
      child: Center(
        child: Text('$raqam'),
      ),
    );
  }
}
