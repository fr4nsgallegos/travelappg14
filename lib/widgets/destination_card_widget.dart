import 'package:flutter/material.dart';

class DestinationCardWidget extends StatelessWidget {
  const DestinationCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      padding: EdgeInsets.all(16),
      width: 170,
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.4),
            BlendMode.srcATop,
          ),
          fit: BoxFit.cover,
          image: NetworkImage(
            "https://images.pexels.com/photos/3538245/pexels-photo-3538245.jpeg",
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.45),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text("NEW", style: TextStyle(color: Colors.white)),
              ),
              SizedBox(
                height: 40,
                width: 80,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      right: 0,
                      child: CircleAvatar(
                        radius: 16,
                        backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg",
                        ),
                      ),
                    ),
                    Positioned(
                      right: 20,
                      child: CircleAvatar(
                        radius: 16,
                        backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg",
                        ),
                      ),
                    ),
                    Positioned(
                      right: 40,
                      child: CircleAvatar(
                        radius: 16,
                        backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Thailand",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    "18 tours",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 4),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.35),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Text(
                      "4.5",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Icon(Icons.star, color: Colors.white),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
