import 'package:flutter/material.dart';

class MidScreen extends StatelessWidget {
  const MidScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 11, left: 11),
                      child: InkWell(
                        onTap: () {
                          // Handle onTap action
                        },
                        child: Card(
                          elevation: 10,
                          color: Colors.white,
                          shadowColor: Colors.black,
                          child: Container(
                            height: 200,
                            width: 330,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                            child: Image.asset("assets/images/evcar.jpeg", fit: BoxFit.cover),
                            ),
                          ),
                        ),
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.only(right: 11, left: 11),
                      child: InkWell(
                        onTap: () {
                          // Handle onTap action
                        },
                        child: Card(
                          elevation: 10,
                          color: Colors.white,
                          shadowColor: Colors.black,
                          child: Container(
                            height: 200,
                            width: 330,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                             // child: const Icon(Icons.food_bank),
                            ),
                          ),
                        ),
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.only(right: 11, left: 11),
                      child: InkWell(
                        onTap: () {
                          // Handle onTap action
                        },
                        child: Card(
                          elevation: 10,
                          color: Colors.white,
                          shadowColor: Colors.black,
                          child: Container(
                            height: 200,
                            width: 330,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                             // child: const Icon(Icons.food_bank),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Add more InkWell widgets for each card
                  ],
                ),
              );
  }
}