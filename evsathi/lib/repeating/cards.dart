import 'package:flutter/material.dart';

class Cardev extends StatelessWidget {
  const Cardev({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
                            elevation: 10,
                            color: Colors.white,
                            shadowColor: Colors.black,
                            child: Container(
                              height: 180,
                              width: 350,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                               // child: const Icon(Icons.food_bank),
                              ),
                            ),
                          ),
    );
  }
}