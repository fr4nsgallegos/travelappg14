import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';

class CarouselPage extends StatelessWidget {
  final List<String> imageList = [
    "https://cdn.pixabay.com/photo/2024/11/18/09/11/trees-9205702_1280.jpg",
    "https://cdn.pixabay.com/photo/2025/11/05/07/14/chameleon-9937960_1280.jpg",
    "https://cdn.pixabay.com/photo/2025/09/15/10/47/line-9835790_1280.jpg",
    "https://cdn.pixabay.com/photo/2025/11/23/14/44/ladybug-9972569_1280.jpg",
    "https://cdn.pixabay.com/photo/2025/11/17/01/56/dragonfly-9960763_1280.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Carousel Slider", style: TextStyle(fontSize: 50)),
            CarouselSlider(
              items: imageList
                  .map(
                    (e) => ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.network(
                        e,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  )
                  .toList(),
              options: CarouselOptions(
                autoPlay: true,
                height: 200,
                enlargeFactor: 0.3,
                enlargeCenterPage: true,
                autoPlayCurve: Curves.easeInCubic,
                initialPage: 2,
              ),
            ),

            Divider(height: 34),
            Text("GF Carousel", style: TextStyle(fontSize: 50)),
            GFCarousel(
              autoPlay: true,
              autoPlayAnimationDuration: Duration(seconds: 2),
              // initialPage: 1,
              hasPagination: true,
              autoPlayCurve: Curves.easeInOutExpo,
              pagerSize: 10,
              passiveIndicator: Colors.red,
              activeIndicator: Colors.yellow,
              enableInfiniteScroll: true,
              enlargeMainPage: true,
              height: 200,
              items: imageList
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadiusGeometry.circular(25),
                        child: Image.network(
                          e,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
