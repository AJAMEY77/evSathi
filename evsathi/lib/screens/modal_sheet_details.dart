import 'package:evsathi/repeating/cards.dart';
import 'package:flutter/material.dart';

class Station_details extends StatelessWidget {
  const Station_details({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
          children: [
            Cardev(),
            Cardev(),
            Cardev(),
    ],
        );
  }
}