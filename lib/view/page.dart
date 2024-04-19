import 'package:first_flutter_app/model/characters.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_app/widgets/myrow.dart';

class CustomPage extends StatelessWidget {
  const CustomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
          crossAxisCount: 2,
          children: myChars
              .map((charList) => MyRow(
                    myChars: charList,
                  ))
              .toList()),
    );
  }
}
