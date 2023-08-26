import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({super.key});

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  final List<String> imageList = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjlmhRcX0BRMONdtZKb0Z7wtO_vGeUBy_hwUHJ_1QJrHSOeyd5yfpNHNJ2Jq2UIbE_Km8&usqp=CAU",
    "https://www.vectorlogo.zone/logos/golang/golang-ar21.png",
    "https://1000logos.net/wp-content/uploads/2020/09/Swift-Logo.jpg",
  ];

  int? currentIndex = 0;
  final CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
            carouselController: _carouselController,
            items: imageList
                .map((element) => SizedBox(
                      width: 200,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(element)),
                    ))
                .toList(),
            options: CarouselOptions(
              height: 200,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
              scrollDirection: Axis.horizontal,
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imageList
              .asMap()
              .entries
              .map((elemet) => GestureDetector(
                    onTap: () => _carouselController.animateToPage(elemet.key),
                    child: Container(
                        margin: const EdgeInsets.all(2),
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                            color: currentIndex == elemet.key
                                ? Colors.grey
                                : Colors.black,
                            shape: BoxShape.circle)),
                  ))
              .toList(),
        )
      ],
    );
  }
}
