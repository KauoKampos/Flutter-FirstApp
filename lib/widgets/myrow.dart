import 'package:first_flutter_app/model/characters.dart';
import 'package:flutter/material.dart';

class MyRow extends StatelessWidget {
  MyRow({
    super.key,
    required this.myChars,
  });

  charList myChars;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      width: 100,
      height: 100,
      child: Column(
        children: [Image.network(myChars.image!), Text(myChars.name!)],
      ),
    );
  }
}
