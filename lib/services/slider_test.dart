import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import "package:flutter/material.dart";

void main() {
  return runApp(CarouselDemo());
}

// ignore: must_be_immutable
class CarouselDemo extends StatelessWidget {
  CarouselController buttonCarouselController = CarouselController();

  CarouselDemo({super.key});

  @override
  Widget build(BuildContext context) => Column(children: [
        FlutterCarousel(
          options: CarouselOptions(
            height: 400.0,
            showIndicator: true,
            slideIndicator: const CircularSlideIndicator(),
          ),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: const BoxDecoration(color: Colors.amber),
                    child: Text(
                      'text $i',
                      style: const TextStyle(fontSize: 16.0),
                    ));
              },
            );
          }).toList(),
        )
      ]);
}
