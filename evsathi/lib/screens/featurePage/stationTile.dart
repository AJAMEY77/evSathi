import 'package:evsathi/screens/featurePage/module/station.dart';
import 'package:flutter/material.dart';

class stationTile extends StatelessWidget {
  final station st;
  final void Function()? onTap;

  const stationTile({
    super.key, 
    required this.st,
    required this.onTap,
    });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green[100],
          borderRadius: BorderRadius.circular(20),
        ),
        margin: EdgeInsets.only(left: 25),
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              st.imgPath,
              height: 140,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              st.name,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              width: 160,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow[800],
                      ),
                      Text(
                        st.rating,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey[700]),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(st.avail),
                    ],
                  )
      
                  // Text('Type : ' + st.chargeType),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
