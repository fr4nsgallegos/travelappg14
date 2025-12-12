import 'package:flutter/material.dart';

class DestinationCard2Widget extends StatelessWidget {
  const DestinationCard2Widget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: 16),
      padding: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: Color(0xffDCFEF9),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.horizontal(
              left: Radius.circular(20),
            ),
            child: Image.network(
              "https://images.pexels.com/photos/1929611/pexels-photo-1929611.jpeg",
              width: size.width / 3.4,
              height: 110,
              fit: BoxFit.cover,
            ),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Thailand",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Text("10 nigths fot two/all inclusive"),
              Text(
                "\$ 215.0",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ],
          ),

          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 4),
            decoration: BoxDecoration(
              color: Colors.cyan,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                Text(
                  "4.0",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Icon(Icons.star, color: Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
