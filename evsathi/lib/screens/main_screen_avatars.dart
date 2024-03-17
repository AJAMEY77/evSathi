import 'package:flutter/material.dart';

class MidScreenAvatar extends StatelessWidget {
  const MidScreenAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: CircleAvatar(
                      maxRadius: 35,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: CircleAvatar(
                      maxRadius: 35,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: CircleAvatar(
                      maxRadius: 35,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: CircleAvatar(
                      maxRadius: 35,
                    ),
                  ),
                  // Add more InkWell widgets for each social media icon
                ],
              ),
            );
  }
}