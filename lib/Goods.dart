import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Goods extends StatelessWidget {
  const Goods({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
                width: 25,
                child: TextField())
          ],
        ),
    );
  }
}
