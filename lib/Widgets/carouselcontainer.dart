import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderCarousel extends StatelessWidget {
  final List<String> imagePaths;

  SliderCarousel({required this.imagePaths});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 100.0, // Adjust the height to fit your design
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        enlargeCenterPage: false,
        viewportFraction: 1,
      ),
      items: imagePaths.map((imagePath) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover, // Ensure the image scales properly
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
